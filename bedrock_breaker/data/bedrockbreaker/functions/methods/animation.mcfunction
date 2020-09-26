#Animation
execute as @e[type=armor_stand,tag=bb.breaker] at @s run tp @s ~ ~ ~ ~5 ~

#particles
execute as @e[type=armor_stand,tag=bb.breaker] at @s run particle minecraft:block bedrock ~ ~.5 ~ 0.6 0.6 0.6 1 3

#redstone dust particles
execute as @e[type=armor_stand,tag=bb.breaker] at @s run particle minecraft:dust 1.0 0.0 0.0 1.0 ~ ~.5 ~ 0.25 0.2 0.25 1 1