#run this function every tick
schedule function depthmobs:tick 1

execute as @e[type=minecraft:zombie,tag=!dm.processed_tick] at @s run function depthmobs:mobs/spawner_check
execute as @e[type=minecraft:creeper,tag=!dm.processed_tick] at @s run function depthmobs:mobs/spawner_check
execute as @e[type=minecraft:skeleton,tag=!dm.processed_tick] at @s run function depthmobs:mobs/spawner_check

scoreboard players add dm.timer dm.tick 1
execute if score dm.timer dm.tick matches 20.. run function depthmobs:second
scoreboard players set dm.timer[scores={dm.tick=20..}] dm.tick 0