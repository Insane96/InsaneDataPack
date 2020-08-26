execute store result score @s pw_health run scoreboard players get @s pw_difficulty
scoreboard players operation @s pw_health *= #health_scaling pw_const
scoreboard players operation @s pw_health += #wither_base_health pw_const

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s pw_health
execute store result entity @s Health double 1 run scoreboard players get @s pw_health