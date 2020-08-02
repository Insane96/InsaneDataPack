#detect netherite pickaxe inside hopper
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:netherite_pickaxe",tag:{Damage:0}}}] at @s if block ~ ~ ~ minecraft:hopper{Items: [{Slot: 0b, id: "minecraft:redstone_block", Count: 2b}, {Slot: 1b, id: "minecraft:obsidian", Count: 1b}, {Slot: 2b, id: "minecraft:comparator", Count: 1b}, {Slot: 3b, id: "minecraft:obsidian", Count: 1b}, {Slot: 4b, id: "minecraft:redstone_block", Count: 2b}]} run tag @s add bedrockbr_pickaxe

#try summon bedrock breaker if any pickaxe has the tag
execute as @e[tag=bedrockbr_pickaxe] at @s run function bedrockbreaker:methods/summon_bedrock_breaker