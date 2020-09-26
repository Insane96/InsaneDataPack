#run this function every second
schedule function depthmobs:second 1s

execute as @e[type=minecraft:zombie,tag=!dm_processed] at @s run function depthmobs:mobs/zombie
execute as @e[type=minecraft:skeleton,tag=!dm_processed] at @s run function depthmobs:mobs/skeleton
execute as @e[type=minecraft:creeper,tag=!dm_processed] at @s run function depthmobs:mobs/creeper

# execute as @e[tag=dm.creeper_death] at @s run particle minecraft:witch ~ ~1 ~ 0.1 0.15 0.1 0 3
execute as @e[tag=dm.creeper_death] at @s run particle minecraft:falling_dust minecraft:black_concrete_powder ~ ~1 ~ 0.1 0.15 0.1 0 3

execute as @e[tag=dm_creeper_gas] at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.5 0.2 0.01 5

effect give @e[tag=dm_creeper_blindness] blindness 20 0
effect give @e[tag=dm_creeper_immobilize] slowness 10 5
effect give @e[tag=dm_creeper_mining_fatigue] mining_fatigue 45 0
effect give @e[tag=dm_creeper_weakness] weakness 45 0
effect give @e[tag=dm_creeper_hunger] hunger 45 2
effect give @e[tag=dm_creeper_slowness] slowness 45 0