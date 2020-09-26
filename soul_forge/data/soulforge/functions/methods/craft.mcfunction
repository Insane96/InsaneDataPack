#check if a soul forge already exists nearby
execute as @e[tag=sf.craft] at @s positioned ~ ~-1 ~ if entity @e[tag=sf.forge,distance=..1.5] run summon item ~ ~2 ~ {Motion:[0.0,0.4,0.2],Item:{id:"minecraft:diamond",sf.count:1b}}
execute as @e[tag=sf.craft] at @s positioned ~ ~-1 ~ if entity @e[tag=sf.forge,distance=..1.5] run title @a[distance=..6] actionbar {"text":"There's already a Soul Forge there"}
execute as @e[tag=sf.craft] at @s positioned ~ ~-1 ~ if entity @e[tag=sf.forge,distance=..1.5] run playsound minecraft:entity.iron_golem.repair block @a[distance=..6] ~ ~ ~ 1.0 0.5
execute as @e[tag=sf.craft] at @s positioned ~ ~-1 ~ if entity @e[tag=sf.forge,distance=..1.5] run kill @s

#check for iron blocks
execute as @e[tag=sf.craft] at @s store result score @s sf.count run fill ~-1 ~ ~-1 ~1 ~1 ~1 barrier replace iron_block
execute as @e[tag=sf.craft] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 iron_block replace barrier
execute as @e[tag=sf.craft,scores={sf.count=11}] at @s run tag @s add sf.craft_iron
scoreboard players set @e[tag=sf.craft] sf.count 0

#check for crying obsidian
execute as @e[tag=sf.craft] at @s store result score @s sf.count run fill ~-1 ~1 ~-1 ~1 ~1 ~1 barrier replace crying_obsidian
execute as @e[tag=sf.craft] at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 crying_obsidian replace barrier
execute as @e[tag=sf.craft,scores={sf.count=4}] at @s run tag @s add sf.craft_obsidian
scoreboard players set @e[tag=sf.craft] sf.count 0

#check for magma blocks
execute as @e[tag=sf.craft] at @s store result score @s sf.count run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier replace magma_block
execute as @e[tag=sf.craft] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magma_block replace barrier
execute as @e[tag=sf.craft,scores={sf.count=7}] at @s run tag @s add sf.craft_magma
scoreboard players set @e[tag=sf.craft] sf.count 0

#check for iron bars and blast furnace and summon armor stand
execute as @e[tag=sf.craft,tag=sf.craft_iron,tag=sf.craft_magma,tag=sf.craft_obsidian] at @s positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["sf.forge","sf.crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=sf.craft,tag=sf.craft_iron,tag=sf.craft_magma,tag=sf.craft_obsidian] at @s positioned ~1 ~ ~ if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["sf.forge","sf.crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=sf.craft,tag=sf.craft_iron,tag=sf.craft_magma,tag=sf.craft_obsidian] at @s positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["sf.forge","sf.crafting"],Marker:1b,Invisible:1b}
execute as @e[tag=sf.craft,tag=sf.craft_iron,tag=sf.craft_magma,tag=sf.craft_obsidian] at @s positioned ~ ~ ~1 if block ~ ~ ~ minecraft:iron_bars if block ~ ~-1 ~ minecraft:blast_furnace align xyz run summon armor_stand ~.5 ~-1 ~.5 {NoGravity:1b,Tags:["sf.forge","sf.crafting"],Marker:1b,Invisible:1b}

#lightning bolt, face armor stand and remove crafting tag
execute as @e[tag=sf.craft,tag=sf.craft_iron,tag=sf.craft_magma,tag=sf.craft_obsidian] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound entity.lightning_bolt.thunder block @a[distance=..15] ~ ~ ~ 1.0 1.0
execute as @e[tag=sf.crafting] at @s facing entity @e[tag=sf.craft,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
tag @e[tag=sf.crafting] remove sf.crafting

#if fails to craft
execute as @e[tag=sf.craft] at @s positioned ~ ~-1 ~ unless entity @e[tag=sf.forge,distance=..1] at @p run summon item ~ ~2 ~ {Item:{id:"minecraft:diamond",sf.count:1b}}

kill @e[tag=sf.craft]