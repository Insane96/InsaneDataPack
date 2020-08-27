execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:ender_pearl",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:iron_block",Count:1b}]} run tag @s add vh.successful_crafting

execute as @e[tag=vh.successful_crafting] at @s align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~.4 ~-.4 ~-.3 {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:ender_pearl",Count:1b},{}],DisabledSlots:2039583,Tags:["vacuum_hopper","vh.tier_1"],Pose:{RightArm:[0f,0f,0f]},CustomName:'{"text": "Basic Vacuum Hopper"}'}

execute as @e[tag=vh.successful_crafting] at @s align xyz positioned ~.5 ~.5 ~.5 run data modify block ~ ~ ~ {} merge value {Items:[],CustomName:'{"text":"Basic Vacuum Hopper"}'}

execute as @e[tag=vh.successful_crafting] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1.0 1.3
execute as @e[tag=vh.successful_crafting] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 1.0 0.5

kill @e[tag=vh.successful_crafting]