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
execute as @e[tag=f_flair,scores={count=4}] at @s run particle flame ~ ~ ~ 0 0 0 5 30000 force
kill @e[tag=f_flair,scores={count=4}]

execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run summon creeper ~ ~ ~ {Fuse:0,Silent:1b,Invulnerable:1b,CustomName:'{"text":"Nether Spire Collapse"}',ExplosionRadius:5}
execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run tp @s ~ ~-3.25 ~
execute as @e[tag=ns_collapse] at @s if entity @a[tag=collapse,distance=..40] run scoreboard players add @s test 1 
kill @e[tag=ns_collapse,scores={test=8..}]


#run this function every second
schedule function test:second 1s