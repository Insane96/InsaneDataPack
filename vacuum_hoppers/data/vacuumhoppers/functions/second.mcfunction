#run this function every second
schedule function vacuumhoppers:second 1s

tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:redstone_block",Count:1b}}] add vh.create_item

# Prevent duplicate machines
execute as @e[tag=vh.create_item] at @s if entity @e[type=armor_stand,distance=..1,tag=vacuum_hopper] run title @a[distance=..6] actionbar {"text":"There's already a Vacuum Hopper there"}
execute as @e[tag=vh.create_item] at @s if entity @e[type=armor_stand,distance=..1,tag=vacuum_hopper] run tag @s remove vh.create_item

#Basic Crafting
execute as @e[tag=vh.create_item] at @s run function vacuumhoppers:methods/crafting_basic

# Upgrading
#function VacuumHoppers:Package/Upgrade if @e[tag=T4_VH,type=armor_stand]

# Vacuum
execute as @e[tag=vacuum_hopper,type=armor_stand] at @s run function vacuumhoppers:methods/vacuum

#Remove
execute as @e[tag=vacuum_hopper] at @s if block ~ ~ ~ air run function vacuumhoppers:methods/remove

#execute @e[tag=T4_VH1] ~ ~ ~ detect ~ ~ ~ air -1 scoreboard players tag @s add T4_VH1_remove
#function VacuumHoppers:package/remove if @e[tag=T4_VH1_remove,type=armor_stand]

#execute @e[tag=T4_VH2] ~ ~ ~ detect ~ ~ ~ air -1 scoreboard players tag @s add T4_VH2_remove
#function VacuumHoppers:package/remove if @e[tag=T4_VH2_remove,type=armor_stand]
