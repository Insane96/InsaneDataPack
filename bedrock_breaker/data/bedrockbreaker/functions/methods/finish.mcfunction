#Add finished tag when at certain score based off efficiency
execute as @e[type=armor_stand,tag=bedrock_breaker,scores={bedrockBreaker=600..}] at @s run tag @s add finished

#destroy bedrock and drop a broken pickaxe
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 air destroy
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s run particle minecraft:block bedrock ~ ~ ~ 0.5 0.4 0.5 1 200
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] run kill @s