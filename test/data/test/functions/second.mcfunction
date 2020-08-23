execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},tag=!flair] run tag @s add flair
execute as @e[tag=flair] run data modify entity @s CustomNameVisible set value 1b
scoreboard players add @e[tag=flair] count 1
execute as @e[tag=flair,scores={count=1}] run data modify entity @s CustomName set value '{"text":"3"}'
execute as @e[tag=flair,scores={count=2}] run data modify entity @s CustomName set value '{"text":"2"}'
execute as @e[tag=flair,scores={count=3}] run data modify entity @s CustomName set value '{"text":"1"}'
execute as @e[tag=flair,scores={count=4}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:1,LifeTime:800,Tags:["f_flair"]}
execute as @e[tag=flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 8 0
execute as @e[tag=flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 8 0
kill @e[tag=flair,scores={count=4}]

execute as @e[tag=f_flair] run scoreboard players add @s count 1
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run particle flame ~ ~ ~ 0 0 0 5 12000 force
execute as @e[tag=f_flair,scores={count=4}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["flair_armor_stand"]}
kill @e[tag=f_flair,scores={count=4}]

#execute as @e[tag=flair_armor_stand] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 5 20 force

execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run summon creeper ~ ~ ~ {Fuse:0,Silent:1b,Invulnerable:1b,CustomName:'{"text":"Nether Spire Collapse"}',ExplosionRadius:5}
execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run tp @s ~ ~-3.25 ~
execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run scoreboard players add @s test 1 
kill @e[tag=ns_collapse,scores={test=8..}]

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lodestone align xyz run summon armor_stand ~.5 ~-.5 ~.5 {NoGravity:1b,Invisible:1b,Tags:["nether_spire_activation"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lodestone run kill @s

execute as @e[tag=nether_spire_activation] at @s if predicate test:check_lodestone_structure run tag @s add nether_spire_can_activate
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run setblock ~ ~-1 ~ structure_block{ignoreEntities:0b,seed:0L,mode:"LOAD",posX:-8,posY:-1,posZ:-8,sizeX:17,integrity:1.0f,sizeY:32,sizeZ:17,name:"minecraft:nether_spire_boss"}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=nether_spire_activation,tag=!nether_spire_can_activate] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.4,0.2],Item:{id:"minecraft:diamond",Count:1b}}
kill @e[tag=nether_spire_activation]

#run this function every second
schedule function test:second 1s