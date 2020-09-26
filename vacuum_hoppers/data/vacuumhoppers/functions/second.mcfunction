#run this function every second
schedule function vacuumhoppers:second 1s

tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:redstone_block",Count:1b}}] add vh.create_item

# Prevent duplicate machines
execute as @e[tag=vh.create_item] at @s if entity @e[type=armor_stand,distance=..1,tag=vh.hopper] run title @a[distance=..6] actionbar {"text":"There's already a Vacuum Hopper there"}
execute as @e[tag=vh.create_item] at @s if entity @e[type=armor_stand,distance=..1,tag=vh.hopper] run tag @s remove vh.create_item

#Basic Crafting
execute as @e[tag=vh.create_item] at @s run function vacuumhoppers:methods/crafting_basic

# Upgrading
execute as @e[tag=vh.tier_1] at @s run function vacuumhoppers:methods/upgrade_advanced
execute as @e[tag=vh.tier_2] at @s run function vacuumhoppers:methods/upgrade_super

# Vacuum
execute as @e[tag=vh.hopper,type=armor_stand] at @s run function vacuumhoppers:methods/vacuum

#Remove
execute as @e[tag=vh.hopper] at @s if block ~ ~ ~ air run function vacuumhoppers:methods/remove