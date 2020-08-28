execute if block ~ ~ ~ hopper{Items:[{Slot:0b,id:"minecraft:end_stone",Count:1b},{Slot:1b,id:"minecraft:netherite_scrap",Count:1b},{Slot:2b,id:"minecraft:chorus_fruit",Count:1b},{Slot:3b,id:"minecraft:netherite_scrap",Count:1b},{Slot:4b,id:"minecraft:end_stone",Count:1b}]} run tag @s add vh.successful_upgrade_super

execute as @e[tag=vh.successful_upgrade_super] run data modify entity @s {} merge value {HandItems:[{id:"minecraft:chorus_fruit",Count:1b},{}],DisabledSlots:2039583,Tags:["vacuum_hopper","vh.tier_3","vh.successful_upgrade_super"],CustomName:'{"text": "Super Vacuum Hopper"}'}

execute as @e[tag=vh.successful_upgrade_super] at @s align xyz positioned ~.5 ~.5 ~.5 run data modify block ~ ~ ~ {} merge value {Items:[],CustomName:'{"text":"Super Vacuum Hopper"}'}

execute as @e[tag=vh.successful_upgrade_super] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:block.redstone_torch.burnout block @a ~ ~ ~ 1.0 1.3
execute as @e[tag=vh.successful_upgrade_super] at @s align xyz positioned ~.5 ~.5 ~.5 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 1.0 0.5

tag @e[tag=vh.successful_upgrade_super] remove vh.successful_upgrade_super