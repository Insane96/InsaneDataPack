#check if a soul forge already exists nearby
execute as @e[tag=soul_forge_craft] at @s positioned ~ ~-1 ~ if entity @e[tag=soul_forge,distance=..1.5] run summon item ~ ~2 ~ {Motion:[0.0,0.4,0.2],Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[tag=soul_forge_craft] at @s positioned ~ ~-1 ~ if entity @e[tag=soul_forge,distance=..1.5] run title @a[distance=..6] actionbar {"text":"There's already a Soul Forge there"}
execute as @e[tag=soul_forge_craft] at @s positioned ~ ~-1 ~ if entity @e[tag=soul_forge,distance=..1.5] run playsound minecraft:entity.iron_golem.repair block @a[distance=..6] ~ ~ ~ 1.0 0.5
execute as @e[tag=soul_forge_craft] at @s positioned ~ ~-1 ~ if entity @e[tag=soul_forge,distance=..1.5] run kill @s

#check for iron blocks
execute as @e[tag=soul_forge_craft] at @s store result score @s count run fill ~-1 ~ ~-1 ~1 ~1 ~1 barrier replace iron_block
execute as @e[tag=soul_forge_craft] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 iron_block replace barrier
execute as @e[tag=soul_forge_craft,scores={count=11}] at @s run tag @s add soul_forge_craft_iron
scoreboard players set @e[tag=soul_forge_craft] count 0

#check for crying obsidian
execute as @e[tag=soul_forge_craft] at @s store result score @s count run fill ~-1 ~1 ~-1 ~1 ~1 ~1 barrier replace crying_obsidian
execute as @e[tag=soul_forge_craft] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 crying_obsidian replace barrier
execute as @e[tag=soul_forge_craft,scores={count=4}] at @s run tag @s add soul_forge_craft_obsidian
scoreboard players set @e[tag=soul_forge_craft] count 0

#check for magma blocks
execute as @e[tag=soul_forge_craft] at @s store result score @s count run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace magma_block
execute as @e[tag=soul_forge_craft] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magma_block replace barrier
execute as @e[tag=soul_forge_craft,scores={count=7}] at @s run tag @s add soul_forge_craft_magma
scoreboard players set @e[tag=soul_forge_craft] count 0

#check for iron bars and blast furnace and summon armor stand
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma,tag=soul_forge_craft_obsidian] at @s positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma,tag=soul_forge_craft_obsidian] at @s positioned ~1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma,tag=soul_forge_craft_obsidian] at @s positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma,tag=soul_forge_craft_obsidian] at @s positioned ~ ~ ~1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["soul_forge","soul_forge_crafting"],Marker:1b,Invisible:1b}

#lightning bolt, face armor stand and remove crafting tag
execute as @e[tag=soul_forge_craft,tag=soul_forge_craft_iron,tag=soul_forge_craft_magma,tag=soul_forge_craft_obsidian] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound entity.lightning_bolt.thunder block @a[distance=..15] ~ ~ ~ 1.0 1.0
execute as @e[tag=soul_forge_crafting] at @s facing entity @e[tag=soul_forge_craft,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
tag @e[tag=soul_forge_crafting] remove soul_forge_crafting

#if fails to craft
execute as @e[tag=soul_forge_craft] at @s positioned ~ ~-1 ~ unless entity @e[tag=soul_forge,distance=..1] at @p run summon item ~ ~2 ~ {Item:{id:"minecraft:diamond",Count:1b}}

kill @e[tag=soul_forge_craft]