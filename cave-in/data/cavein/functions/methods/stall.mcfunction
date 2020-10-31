scoreboard players remove @s ci.trigTime 1

particle block minecraft:stone ~ ~3 ~ 3.5 2.33 3.5 0.01 200 normal @a
playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 0.15 0

execute if score @s ci.trigTime matches 0 run function cavein:methods/trigger
kill @s[scores={ci.trigTime=-5}]