particle minecraft:dust 0.521 0.278 0.458 0.75 ~ ~ ~ 0.0 1 0.0 0 2 force
scoreboard players remove @s test 2
execute if score @s test matches -32.. positioned ~ ~-2 ~ run function test:methods/void_extractor_particles