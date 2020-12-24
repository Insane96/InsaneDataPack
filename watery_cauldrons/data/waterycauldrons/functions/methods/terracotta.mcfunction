execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_terracotta"}}] run tag @s add wc.colored_terracotta
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_terracotta"}}] run tag @s add wc.colored_terracotta

#execute as @e[tag=wc.colored_terracotta] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add wc.process_terracotta
#execute as @e[tag=wc.colored_terracotta] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add wc.process_terracotta
execute as @e[tag=wc.colored_terracotta] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add wc.process_terracotta

execute as @e[tag=wc.colored_terracotta,tag=wc.process_terracotta] at @s run data modify entity @s Item.id set value "minecraft:terracotta"
execute as @e[tag=wc.colored_terracotta,tag=wc.process_terracotta] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=wc.colored_terracotta,tag=wc.process_terracotta] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=wc.colored_terracotta,tag=wc.process_terracotta] at @s run tag @s remove wc.colored_terracotta

#execute as @e[tag=wc.process_terracotta] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
#execute as @e[tag=wc.process_terracotta] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @e[tag=wc.process_terracotta] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=wc.process_terracotta] remove wc.process_terracotta