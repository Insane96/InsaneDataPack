execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_concrete_powder"}}] run tag @s add wc.black_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_concrete_powder"}}] run tag @s add wc.red_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_concrete_powder"}}] run tag @s add wc.green_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_concrete_powder"}}] run tag @s add wc.brown_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_concrete_powder"}}] run tag @s add wc.blue_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_concrete_powder"}}] run tag @s add wc.purple_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_concrete_powder"}}] run tag @s add wc.cyan_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_concrete_powder"}}] run tag @s add wc.light_gray_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_concrete_powder"}}] run tag @s add wc.gray_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_concrete_powder"}}] run tag @s add wc.pink_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_concrete_powder"}}] run tag @s add wc.lime_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] run tag @s add wc.yellow_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_concrete_powder"}}] run tag @s add wc.light_blue_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_concrete_powder"}}] run tag @s add wc.magenta_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_concrete_powder"}}] run tag @s add wc.orange_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_concrete_powder"}}] run tag @s add wc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_concrete_powder"}}] run tag @s add wc.white_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_concrete_powder"}}] run tag @s add wc.concrete_powder

#execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add wc.process_concrete
#execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add wc.process_concrete
execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add wc.process_concrete

execute as @e[tag=wc.process_concrete] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5 
execute as @e[tag=wc.process_concrete] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50

execute as @e[tag=wc.black_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:black_concrete"
tag @e[tag=wc.black_concrete_powder] remove wc.black_concrete_powder
execute as @e[tag=wc.red_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:red_concrete"
tag @e[tag=wc.red_concrete_powder] remove wc.red_concrete_powder
execute as @e[tag=wc.green_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:green_concrete"
tag @e[tag=wc.green_concrete_powder] remove wc.green_concrete_powder
execute as @e[tag=wc.brown_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:brown_concrete"
tag @e[tag=wc.brown_concrete_powder] remove wc.brown_concrete_powder
execute as @e[tag=wc.blue_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:blue_concrete"
tag @e[tag=wc.blue_concrete_powder] remove wc.blue_concrete_powder
execute as @e[tag=wc.purple_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:purple_concrete"
tag @e[tag=wc.purple_concrete_powder] remove wc.purple_concrete_powder
execute as @e[tag=wc.cyan_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:cyan_concrete"
tag @e[tag=wc.cyan_concrete_powder] remove wc.cyan_concrete_powder
execute as @e[tag=wc.light_gray_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:light_gray_concrete"
tag @e[tag=wc.light_gray_concrete_powder] remove wc.light_gray_concrete_powder
execute as @e[tag=wc.gray_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:gray_concrete"
tag @e[tag=wc.gray_concrete_powder] remove wc.gray_concrete_powder
execute as @e[tag=wc.pink_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:pink_concrete"
tag @e[tag=wc.pink_concrete_powder] remove wc.pink_concrete_powder
execute as @e[tag=wc.lime_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:lime_concrete"
tag @e[tag=wc.lime_concrete_powder] remove wc.lime_concrete_powder
execute as @e[tag=wc.yellow_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:yellow_concrete"
tag @e[tag=wc.yellow_concrete_powder] remove wc.yellow_concrete_powder
execute as @e[tag=wc.light_blue_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:light_blue_concrete"
tag @e[tag=wc.light_blue_concrete_powder] remove wc.light_blue_concrete_powder
execute as @e[tag=wc.magenta_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:magenta_concrete"
tag @e[tag=wc.magenta_concrete_powder] remove wc.magenta_concrete_powder
execute as @e[tag=wc.orange_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:orange_concrete"
tag @e[tag=wc.orange_concrete_powder] remove wc.orange_concrete_powder
execute as @e[tag=wc.white_concrete_powder,tag=wc.process_concrete] run data modify entity @s Item.id set value "minecraft:white_concrete"
tag @e[tag=wc.white_concrete_powder] remove wc.white_concrete_powder

#execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0] replace
#execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1] replace
execute as @e[tag=wc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0] replace

tag @e[tag=wc.concrete_powder] remove wc.concrete_powder
tag @e[tag=wc.process_concrete] remove wc.process_concrete