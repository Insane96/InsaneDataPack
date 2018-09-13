execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency0] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency1] at @s run tp @s ~ ~ ~ ~7.5 ~
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency2] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency3] at @s run tp @s ~ ~ ~ ~12.5 ~
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency4] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency5] at @s run tp @s ~ ~ ~ ~20 ~

#execute as @e[type=armor_stand,tag=bedrock_breaker] at @s if block ~-1 ~ ~ bedrock run particle minecraft:block bedrock ~-1 ~.4 ~ 0.25 0.2 0.25 1 2
#execute as @e[type=armor_stand,tag=bedrock_breaker] at @s if block ~1 ~ ~ bedrock run particle minecraft:block bedrock ~1 ~.4 ~ 0.25 0.2 0.25 1 2
#execute as @e[type=armor_stand,tag=bedrock_breaker] at @s if block ~ ~ ~-1 bedrock run particle minecraft:block bedrock ~ ~.4 ~-1 0.25 0.2 0.25 1 2
#execute as @e[type=armor_stand,tag=bedrock_breaker] at @s if block ~ ~ ~1 bedrock run particle minecraft:block bedrock ~ ~.4 ~1 0.25 0.2 0.25 1 2

execute as @e[type=armor_stand,tag=bedrock_breaker] at @s run particle minecraft:block bedrock ~ ~.8 ~ 0.55 0.35 0.55 .1 8

execute as @e[type=armor_stand,tag=bedrock_breaker] at @s run particle minecraft:dust 1.0 0.0 0.0 1.0 ~ ~.5 ~ 0.25 0.2 0.25 1 1



#Basic Bedrock Breaker
execute as @e[type=armor_stand,tag=basic_bedrock_breaker] at @s run tp @s ~ ~ ~ ~5 ~

execute as @e[type=armor_stand,tag=basic_bedrock_breaker] at @s run particle minecraft:block bedrock ~ ~.4 ~ 0.55 0.2 0.55 .1 8

execute as @e[type=armor_stand,tag=basic_bedrock_breaker] at @s run particle minecraft:dust 1.0 0.0 0.0 1.0 ~ ~.5 ~ 0.25 0.2 0.25 1 1