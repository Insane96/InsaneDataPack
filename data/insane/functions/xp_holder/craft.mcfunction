execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:diamond"}}] at @s if block ~ ~ ~ minecraft:chest{Items: [{Slot: 4b, id: "minecraft:hopper", Count: 1b}, {Slot: 12b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 13b, id: "minecraft:enchanted_book", Count: 1b}, {Slot: 14b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 22b, id: "minecraft:hopper", Count: 1b}]} run tag @s add xp_holder_craft

execute as @e[tag=xp_holder_craft] at @s if score @p playerXp matches ..549 run title @p actionbar [{"text":"Nearest player doesn't have enough levels to craft the XP Holder","color":"dark_red"}]
execute as @e[tag=xp_holder_craft] at @s if score @p playerXp matches ..549 run tag @s remove xp_holder_craft

execute as @e[tag=xp_holder_craft] at @s run xp add @p -550
execute as @e[tag=xp_holder_craft] at @s run playsound minecraft:entity.player.levelup block @a[distance=..12] ~ ~ ~ 1.0 0.5 

execute at @e[tag=xp_holder_craft] run summon armor_stand ~ ~-0.5 ~ {Invisible:1b,Tags:["xp_holder"],HandItems:[{id:"minecraft:experience_bottle",Count:1b},{}],NoGravity:1b,Marker:1b,Fire:32000,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[tag=xp_holder_craft] as @e[type=armor_stand,tag=xp_holder] at @s run scoreboard players set @s xpHeld 0
execute as @e[tag=xp_holder_craft] as @e[type=armor_stand,tag=xp_holder] at @s align xyz run tp @s ~.9 ~.05 ~0.2
execute as @e[tag=xp_holder_craft] as @e[type=armor_stand,tag=xp_holder] at @s run data merge block ~ ~ ~ {Items:[],Lock:"cacca"}
kill @e[tag=xp_holder_craft]