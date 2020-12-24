scoreboard players set @s random 100
execute as @s run function global:random/generate

data modify entity @s[scores={random_data=..39},y=20,dy=-20] {} merge value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"Dweller",Id:[I;2026288842,-768784177,-1280773695,2094734339],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBiZjY5NTJiYWE0N2ZkMjY0YmY3MDUwMjU5NmU0NzllYjUyYTFmNjRkZjViZTI4ZjM3MmU3ODYxYTY4MjEzOSJ9fX0="}]}}}}],ArmorDropChances:[-200.0f,-200.0f,-200.0f,-200.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.knockback_resistance",Base:1.0}],Health:40,CustomName:'{"text":"Dweller"}',CustomNameVisible:0b}

data modify entity @s[scores={random_data=95..},y=40,dy=-40] {} merge value {CustomName:'{"text":"Zombie Summoner"}',Attributes:[{Name:"minecraft:zombie.spawn_reinforcements",Base:1.0},{Name:"minecraft:generic.max_health",Base:40}],Health:40,HandItems:[{id:"minecraft:ender_eye",Count:1b}],HandDropChances:[-200.0f,-200.0f]}

tag @s add dm.processed
#scoreboard players reset @s random_data