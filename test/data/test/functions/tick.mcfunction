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

#run this function every tick
schedule function test:tick 1