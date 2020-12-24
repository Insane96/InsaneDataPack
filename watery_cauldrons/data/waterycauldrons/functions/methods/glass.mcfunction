execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_stained_glass"}}] run tag @s add wc.stained_glass
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_stained_glass"}}] run tag @s add wc.stained_glass

#execute as @e[tag=wc.stained_glass] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add wc.process_glass
#execute as @e[tag=wc.stained_glass] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add wc.process_glass
execute as @e[tag=wc.stained_glass] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add wc.process_glass

execute as @e[tag=wc.stained_glass,tag=wc.process_glass] at @s run data modify entity @s Item.id set value "minecraft:glass"
execute as @e[tag=wc.stained_glass,tag=wc.process_glass] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=wc.stained_glass,tag=wc.process_glass] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=wc.stained_glass,tag=wc.process_glass] at @s run tag @s remove wc.stained_glass

#execute as @e[tag=wc.process_glass] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
#execute as @e[tag=wc.process_glass] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @e[tag=wc.process_glass] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=wc.process_glass] remove wc.process_glass