#check for iron blocks
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 store result score @s count run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:barrier replace minecraft:iron_block
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:iron_block replace minecraft:barrier
execute as @e[tag=soul_forge,scores={count=..10}] run tag @s add soul_forge_uncraft
scoreboard players set @e[tag=soul_forge] count 0

#check for crying obsidian
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 store result score @s count run fill ~-1 ~1 ~-1 ~1 ~1 ~1 minecraft:barrier replace minecraft:crying_obsidian
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 run fill ~-1 ~1 ~-1 ~1 ~1 ~1 minecraft:crying_obsidian replace minecraft:barrier
execute as @e[tag=soul_forge,scores={count=..3}] run tag @s add soul_forge_uncraft
scoreboard players set @e[tag=soul_forge] count 0

#check for magma blocks
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 store result score @s count run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:barrier replace minecraft:magma_block
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:magma_block replace minecraft:barrier
execute as @e[tag=soul_forge,scores={count=..6}] run tag @s add soul_forge_uncraft
scoreboard players set @e[tag=soul_forge] count 0

#check for iron bars
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 store result score @s count run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:barrier replace minecraft:iron_bars
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:iron_bars replace minecraft:barrier
execute as @e[tag=soul_forge,scores={count=0}] run tag @s add soul_forge_uncraft
scoreboard players set @e[tag=soul_forge] count 0

#check for blast furnace
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 unless block ~ ~-1 ~-1 minecraft:blast_furnace unless block ~ ~-1 ~1 minecraft:blast_furnace unless block ~-1 ~-1 ~ minecraft:blast_furnace unless block ~1 ~-1 ~ minecraft:blast_furnace run tag @s add soul_forge_uncraft

#check for soulfire
execute as @e[tag=soul_forge] at @s positioned ^ ^1 ^1 unless block ~ ~ ~ minecraft:soul_fire run tag @s add soul_forge_uncraft

execute as @e[tag=soul_forge_uncraft] at @s run playsound minecraft:block.respawn_anchor.deplete block @a[distance=..15] ~ ~ ~ 0.75 0.5
execute as @e[tag=soul_forge_uncraft] at @s positioned ^ ^ ^1 align xyz at @p run summon item ~.5 ~2.5 ~.5 {Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[tag=soul_forge_uncraft] at @s run kill @s