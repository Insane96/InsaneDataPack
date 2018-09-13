execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~-1 ~ ~ minecraft:chest run setblock ~-1 ~ ~ air destroy
execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~1 ~ ~ minecraft:chest run setblock ~1 ~ ~ air destroy
execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~ ~ ~-1 minecraft:chest run setblock ~ ~ ~-1 air destroy
execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~ ~ ~1 minecraft:chest run setblock ~ ~ ~1 air destroy
#execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~ ~-1 ~ minecraft:chest run setblock ~ ~-1 ~ air destroy
#execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s if block ~ ~1 ~ minecraft:chest run setblock ~ ~1 ~ air destroy