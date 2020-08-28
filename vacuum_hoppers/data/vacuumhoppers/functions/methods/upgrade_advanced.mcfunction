execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:quartz_block",Count:1b},{Slot:1b,id:"minecraft:emerald",Count:1b},{Slot:2b,id:"minecraft:ender_eye",Count:1b},{Slot:3b,id:"minecraft:emerald",Count:1b},{Slot:4b,id:"minecraft:quartz_block",Count:1b}]} run tag @s add vh.successful_upgrade_advanced

execute as @e[tag=vh.successful_upgrade_advanced] run data modify entity @s {} merge value {HandItems:[{id:"minecraft:ender_eye",Count:1b},{}],DisabledSlots:2039583,Tags:["vacuum_hopper","vh.tier_2","vh.successful_upgrade_advanced"],CustomName:'{"text": "Advanced Vacuum Hopper"}'}

execute as @e[tag=vh.successful_upgrade_advanced] at @s align xyz positioned ~.5 ~.5 ~.5 run data modify block ~ ~ ~ {} merge value {Items:[],CustomName:'{"text":"Advanced Vacuum Hopper"}'}

execute as @e[tag=vh.successful_upgrade_advanced] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1.0 1.3
execute as @e[tag=vh.successful_upgrade_advanced] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 1.0 0.5

tag @e[tag=vh.successful_upgrade_advanced] remove vh.successful_upgrade_advanced