execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:iron_ore"}]} positioned ~ ~1 ~ run summon item ^ ^ ^-1 {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:gold_ore"}]} positioned ~ ~1 ~ run summon item ^ ^ ^-1 {Item:{id:"minecraft:gold_ingot",Count:1b}}

#particles
execute as @e[tag=soul_forge] at @s positioned ^ ^ ^1 run particle minecraft:campfire_cosy_smoke ~ ~.75 ~ 0 0 0 0.05 1

#sounds
execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:iron_ore"}]} positioned ~ ~2.5 ~ run playsound minecraft:block.respawn_anchor.charge block @a[distance=..15] ~ ~ ~ 0.4 0.5
execute as @e[tag=soul_forge] at @s if block ~ ~ ~ blast_furnace{CookTime:99s,Items:[{Slot:0b,id:"minecraft:gold_ore"}]} positioned ~ ~2.5 ~ run playsound minecraft:block.respawn_anchor.charge block @a[distance=..15] ~ ~ ~ 0.4 0.5