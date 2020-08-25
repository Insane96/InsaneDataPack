execute as @e[tag=xp_holder,type=minecraft:armor_stand,scores={xpHeld=1..9}] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run tag @s add withdrawing_xp
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run scoreboard players remove @s xpHeld 1
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~2 ~ {Value:1}
tag @e[tag=withdrawing_xp] remove withdrawing_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand,scores={xpHeld=10..200}] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run tag @s add withdrawing_xp
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run scoreboard players remove @s xpHeld 10
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~2 ~ {Value:10}
tag @e[tag=withdrawing_xp] remove withdrawing_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand,scores={xpHeld=200..}] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run tag @s add withdrawing_xp
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 if entity @p[distance=..0.5] run scoreboard players remove @s xpHeld 50
execute as @e[type=minecraft:armor_stand,tag=withdrawing_xp] at @s align xyz positioned ~.5 ~-2.05 ~.5 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~2 ~ {Value:50}
tag @e[tag=withdrawing_xp] remove withdrawing_xp