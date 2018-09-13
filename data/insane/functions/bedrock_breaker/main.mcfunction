scoreboard objectives add bedrockBreaker dummy

execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:diamond_pickaxe",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] at @s if block ~ ~ ~ minecraft:hopper{Items: [{Slot: 0b, id: "minecraft:redstone_block", Count: 3b}, {Slot: 1b, id: "minecraft:obsidian", Count: 2b}, {Slot: 2b, id: "minecraft:redstone_torch", Count: 1b}, {Slot: 3b, id: "minecraft:obsidian", Count: 2b}, {Slot: 4b, id: "minecraft:redstone_block", Count: 3b}]} run tag @s add bedrock_breaker_pick 
scoreboard players set @e[tag=bedrock_breaker_pick] bedrockBreaker 0
execute as @e[tag=bedrock_breaker_pick] store result score @s bedrockBreaker run data get entity @s Item.tag.Damage
execute as @e[tag=bedrock_breaker_pick] if score @s bedrockBreaker matches 1.. run tag @s remove bedrock_breaker_pick
execute as @e[tag=bedrock_breaker_pick,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}] at @s run tag @s add efficiency1
execute as @e[tag=bedrock_breaker_pick,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}}}] at @s run tag @s add efficiency2
execute as @e[tag=bedrock_breaker_pick,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:3s}]}}}] at @s run tag @s add efficiency3
execute as @e[tag=bedrock_breaker_pick,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:4s}]}}}] at @s run tag @s add efficiency4
execute as @e[tag=bedrock_breaker_pick,nbt={Item:{tag:{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]}}}] at @s run tag @s add efficiency5
execute as @e[tag=bedrock_breaker_pick,tag=!efficiency1,tag=!efficiency2,tag=!efficiency3,tag=!efficiency4,tag=!efficiency5] at @s run tag @s add efficiency0

execute as @e[tag=bedrock_breaker_pick] at @s run function insane:bedrock_breaker/craft

scoreboard players add @e[type=armor_stand,tag=bedrock_breaker] bedrockBreaker 1

#Destroy Bedrock
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency0,scores={bedrockBreaker=1500..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency1,scores={bedrockBreaker=1200..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency2,scores={bedrockBreaker=900..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency3,scores={bedrockBreaker=720..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency4,scores={bedrockBreaker=540..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=efficiency5,scores={bedrockBreaker=300..}] at @s run tag @s add finished

#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~-1 ~ ~ bedrock run particle minecraft:block bedrock ~-1 ~.5 ~ 0.25 0.2 0.25 100 10
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~-1 ~ ~ bedrock run setblock ~-1 ~ ~ air destroy
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~1 ~ ~ bedrock run particle minecraft:block bedrock ~1 ~.5 ~ 0.25 0.2 0.25 100 10
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~1 ~ ~ bedrock run setblock ~1 ~ ~ air destroy
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~ ~ ~-1 bedrock run particle minecraft:block bedrock ~ ~.5 ~-1 0.25 0.2 0.25 100 10
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~ ~ ~-1 bedrock run setblock ~ ~ ~-1 air destroy
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~ ~ ~1 bedrock run particle minecraft:block bedrock ~ ~.5 ~1 0.25 0.2 0.25 100 10
#execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s if block ~ ~ ~1 bedrock run setblock ~ ~ ~1 air destroy
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 air destroy
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] at @s run setblock ~ ~ ~ hopper
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency0] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:1,Damage:390,Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency1] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:1,Damage:546,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency2] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:2,Damage:702,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency3] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:2,Damage:858,Enchantments:[{id:"minecraft:efficiency",lvl:3s},{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency4] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:3,Damage:1014,Enchantments:[{id:"minecraft:efficiency",lvl:4s},{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished,tag=efficiency5] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{RepairCost:4,Damage:1170,Enchantments:[{id:"minecraft:efficiency",lvl:5s},{id:"minecraft:unbreaking",lvl:3s}]}}}
execute as @e[type=armor_stand,tag=bedrock_breaker,tag=finished] run kill @s



#Basic Bedrock Breaker
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:diamond_pickaxe"}}] at @s if block ~ ~ ~ minecraft:hopper{Items: [{Slot: 0b, id: "minecraft:redstone", Count: 1b}, {Slot: 1b, id: "minecraft:redstone_torch", Count: 1b}, {Slot: 2b, id: "minecraft:obsidian", Count: 1b}, {Slot: 3b, id: "minecraft:redstone_torch", Count: 1b}, {Slot: 4b, id: "minecraft:redstone", Count: 1b}]} run tag @s add basic_bedrock_breaker_pick
execute as @e[tag=basic_bedrock_breaker_pick] store result score @s bedrockBreaker run data get entity @s Item.tag.Damage
execute as @e[tag=basic_bedrock_breaker_pick] if score @s bedrockBreaker matches 1.. run tag @s remove basic_bedrock_breaker_pick

execute as @e[tag=basic_bedrock_breaker_pick] at @s run function insane:bedrock_breaker/craft_basic

scoreboard players add @e[type=armor_stand,tag=basic_bedrock_breaker] bedrockBreaker 1

execute as @e[type=armor_stand,tag=basic_bedrock_breaker,scores={bedrockBreaker=1500..}] at @s run tag @s add finished
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air destroy
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] at @s run setblock ~ ~ ~ hopper
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] at @s run particle minecraft:item diamond_pickaxe ~ ~.8 ~ 0 0 0 .2 100
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] at @s run playsound minecraft:entity.item.break block @a[distance=..16] ~ ~ ~ 0.4
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:1560}}}
execute as @e[type=armor_stand,tag=basic_bedrock_breaker,tag=finished] run kill @s