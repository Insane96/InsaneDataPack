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
#execute as @e[tag=creeper_release,nbt={ignited:1b},scores={test=29}] at @s

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

execute as @e[tag=tnt_throw] at @s facing entity @p eyes positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["direction"]}
execute as @e[tag=tnt_throw] at @s run summon arrow ~ ~1 ~ {pickup:2b,player:0b,damage:2.0d,crit:1b,PierceLevel:2b,Tags:["projectile"]}
data modify entity @e[type=minecraft:arrow,tag=projectile,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
data modify entity @e[type=minecraft:arrow,tag=projectile,limit=1] UUID set from entity @e[type=area_effect_cloud,tag=direction,limit=1] UUID
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]
tag @e[tag=tnt_throw] remove tnt_throw



scoreboard players set @e[tag=void_miner] random 100
execute as @e[tag=void_miner] run function global:random/functions/generate

#use loot tables and /loot, f*ck this shit
execute as @e[tag=void_miner,scores={random_data=0..14}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=15..41}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=42..63}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_nugget",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=64..74}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=75..82}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=83..84}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=85..86}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=87..98}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:quartz",Count:1b}}
execute as @e[tag=void_miner,scores={random_data=99..99}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_scrap",Count:1b}}

#execute as @e[scores={rightClick=1}] at @s run function test:right_click

execute as @e[tag=granade] at @s positioned ~ ~1 ~ if entity @e[distance=..1.25,type=!item,tag=!granade] run data modify entity @s Fuse set value 0
execute as @e[tag=granade,nbt={Motion:[0.0,0.0,0.0]}] at @s run data modify entity @s Fuse set value 0

execute as @e[tag=ve.void_extractor] at @s store result score @s test run data get entity @s Pos[1]
execute as @e[tag=ve.void_extractor] at @s run function test:methods/void_extractor_particles


#run this function every tick
schedule function test:tick 1