execute store result score @s pw.health run scoreboard players get @s pw.difficulty
scoreboard players operation @s pw.health *= #health_scaling pw.const
scoreboard players operation @s pw.health += #wither_base_health pw.const

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s pw.health
execute store result entity @s Health double 1 run scoreboard players get @s pw.health