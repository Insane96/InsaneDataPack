scoreboard objectives add test dummy

execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.0,0.75,0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.75,0.75,0.0]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.0,0.75,-0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[-0.75,0.75,0.0]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.75,0.75,0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[-0.75,0.75,-0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.75,0.75,-0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[-0.75,0.75,0.75]}
execute as @e[tag=tnt_release] at @s positioned ~ ~1 ~ run summon tnt ~ ~ ~ {Fuse:50,Motion:[0.0,0.75,0.0]}
tag @e[tag=tnt_release] remove tnt_release

execute as @e[tag=creeper_release] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.25 0.25 0.25 .5 1

execute as @e[tag=creeper_release] at @s if entity @p[distance=..5.5] run data modify entity @s ignited set value 1
execute as @e[tag=creeper_release] at @s if entity @p[distance=..5.5] run data modify entity @s ExplosionRadius set value 0
execute as @e[tag=creeper_release,nbt={ignited:1b}] at @s run scoreboard players add @s test 1
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s

execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.0,0.75,0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.75,0.75,0.0]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.0,0.75,-0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[-0.75,0.75,0.0]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.75,0.75,0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[-0.75,0.75,-0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.75,0.75,-0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[-0.75,0.75,0.75]}
execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s run summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Motion:[0.0,0.75,0.0]}
# tp @e[tag=creeper_release] ~ -64 ~
tag @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] remove creeper_release

# item merger 

# TODO move heavy checks to half_second or second

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ minecraft:soul_fire run tag @s add soul_forge_craft
#check for iron blocks
execute as @e[tag=soul_forge_craft] at @s store result score @s test run fill ~-1 ~ ~-1 ~1 ~1 ~1 barrier replace iron_block
execute as @e[tag=soul_forge_craft] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 iron_block replace barrier
execute as @e[tag=soul_forge_craft,scores={test=15}] at @s run tag @s add soul_forge_craft_iron
scoreboard players set @e[tag=soul_forge_craft] test 0

#check for magma blocks
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron] at @s store result score @s test run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace magma_block
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magma_block replace barrier
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,scores={test=7}] at @s run tag @s add soul_forge_craft_magma
scoreboard players set @e[tag=soul_forge_craft] test 0

#check for iron bars and blast furnace and summon armor stand
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-.5 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s positioned ~1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-.5 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-.5 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s positioned ~ ~ ~1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-.5 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}


execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:lightning_bolt
execute as @e[tag=soul_forge_crafting] at @s facing entity @e[tag=soul_forge_craft,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=soul_forge_crafting] remove soul_forge_crafting
#execute as @e[tag=soul_forge_craft,tag=!soul_forge_craft_iron,tag=soul_forge_craft_magma] at @s run tellraw @a[distance=..5] [{"text":"Sei una pippa"}]

execute as @e[tag=soul_forge] at @s unless block ~ ~ ~ blast_furnace run kill @s

execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:iron_ore"}]} positioned ~ ~1.75 ~ run summon item ^ ^ ^-1.5 {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:gold_ore"}]} positioned ~ ~1.75 ~ run summon item ^ ^ ^-1.5 {Item:{id:"minecraft:gold_ingot",Count:1b}}

kill @e[tag=soul_forge_craft]



#run this function every tick
schedule function test:tick 1