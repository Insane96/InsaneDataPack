execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_carpet"}}] run tag @s add wc.colored_carpet
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_carpet"}}] run tag @s add wc.colored_carpet
#execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_carpet"}}] run tag @s add wc.colored_carpet

#execute as @e[tag=wc.colored_carpet] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add wc.process_carpet
#execute as @e[tag=wc.colored_carpet] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add wc.process_carpet
execute as @e[tag=wc.colored_carpet] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add wc.process_carpet

execute as @e[tag=wc.colored_carpet,tag=wc.process_carpet] at @s run data modify entity @s Item.id set value "minecraft:white_carpet"
execute as @e[tag=wc.colored_carpet,tag=wc.process_carpet] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=wc.colored_carpet,tag=wc.process_carpet] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=wc.colored_carpet,tag=wc.process_carpet] at @s run tag @s remove wc.colored_carpet

#execute as @e[tag=wc.process_carpet] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
#execute as @e[tag=wc.process_carpet] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @e[tag=wc.process_carpet] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=wc.process_carpet] remove wc.process_carpet