execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5,scores={playerXp=1..9}] run tag @s add depositing_xp
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5] run scoreboard players add @s xpHeld 1
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run xp add @s -1 points
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~.35 ~ {Value:0}
tag @e[tag=depositing_xp] remove depositing_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5,scores={playerXp=10..}] run tag @s add depositing_xp
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5] run scoreboard players add @s xpHeld 10
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run xp add @s -10 points
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~.35 ~ {Value:0}
tag @e[tag=depositing_xp] remove depositing_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5,scores={playerXp=20..,playerSneak=1..}] run tag @s add depositing_xp
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 if entity @p[distance=..0.5] run scoreboard players add @s xpHeld 20
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run xp add @s -20 points
execute as @e[type=minecraft:armor_stand,tag=depositing_xp] at @s positioned ~-.4 ~.95 ~0.3 as @p[distance=..0.5] run summon minecraft:experience_orb ~ ~.35 ~ {Value:0}
scoreboard players set @a[scores={playerSneak=1..}] playerSneak 0
tag @e[tag=depositing_xp] remove depositing_xp