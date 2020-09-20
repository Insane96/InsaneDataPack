execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_concrete_powder"}}] run tag @s add bc.black_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_concrete_powder"}}] run tag @s add bc.red_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_concrete_powder"}}] run tag @s add bc.green_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_concrete_powder"}}] run tag @s add bc.brown_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_concrete_powder"}}] run tag @s add bc.blue_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_concrete_powder"}}] run tag @s add bc.purple_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_concrete_powder"}}] run tag @s add bc.cyan_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_concrete_powder"}}] run tag @s add bc.light_gray_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_concrete_powder"}}] run tag @s add bc.gray_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_concrete_powder"}}] run tag @s add bc.pink_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_concrete_powder"}}] run tag @s add bc.lime_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] run tag @s add bc.yellow_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_concrete_powder"}}] run tag @s add bc.light_blue_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_concrete_powder"}}] run tag @s add bc.magenta_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_concrete_powder"}}] run tag @s add bc.orange_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_concrete_powder"}}] run tag @s add bc.concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_concrete_powder"}}] run tag @s add bc.white_concrete_powder
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_concrete_powder"}}] run tag @s add bc.concrete_powder

#execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add bc.process_concrete
#execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add bc.process_concrete
execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add bc.process_concrete

execute as @e[tag=bc.process_concrete] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5 
execute as @e[tag=bc.process_concrete] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50

execute as @e[tag=bc.black_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:black_concrete"
tag @e[tag=bc.black_concrete_powder] remove bc.black_concrete_powder
execute as @e[tag=bc.red_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:red_concrete"
tag @e[tag=bc.red_concrete_powder] remove bc.red_concrete_powder
execute as @e[tag=bc.green_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:green_concrete"
tag @e[tag=bc.green_concrete_powder] remove bc.green_concrete_powder
execute as @e[tag=bc.brown_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:brown_concrete"
tag @e[tag=bc.brown_concrete_powder] remove bc.brown_concrete_powder
execute as @e[tag=bc.blue_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:blue_concrete"
tag @e[tag=bc.blue_concrete_powder] remove bc.blue_concrete_powder
execute as @e[tag=bc.purple_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:purple_concrete"
tag @e[tag=bc.purple_concrete_powder] remove bc.purple_concrete_powder
execute as @e[tag=bc.cyan_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:cyan_concrete"
tag @e[tag=bc.cyan_concrete_powder] remove bc.cyan_concrete_powder
execute as @e[tag=bc.light_gray_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:light_gray_concrete"
tag @e[tag=bc.light_gray_concrete_powder] remove bc.light_gray_concrete_powder
execute as @e[tag=bc.gray_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:gray_concrete"
tag @e[tag=bc.gray_concrete_powder] remove bc.gray_concrete_powder
execute as @e[tag=bc.pink_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:pink_concrete"
tag @e[tag=bc.pink_concrete_powder] remove bc.pink_concrete_powder
execute as @e[tag=bc.lime_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:lime_concrete"
tag @e[tag=bc.lime_concrete_powder] remove bc.lime_concrete_powder
execute as @e[tag=bc.yellow_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:yellow_concrete"
tag @e[tag=bc.yellow_concrete_powder] remove bc.yellow_concrete_powder
execute as @e[tag=bc.light_blue_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:light_blue_concrete"
tag @e[tag=bc.light_blue_concrete_powder] remove bc.light_blue_concrete_powder
execute as @e[tag=bc.magenta_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:magenta_concrete"
tag @e[tag=bc.magenta_concrete_powder] remove bc.magenta_concrete_powder
execute as @e[tag=bc.orange_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:orange_concrete"
tag @e[tag=bc.orange_concrete_powder] remove bc.orange_concrete_powder
execute as @e[tag=bc.white_concrete_powder,tag=bc.process_concrete] run data modify entity @s Item.id set value "minecraft:white_concrete"
tag @e[tag=bc.white_concrete_powder] remove bc.white_concrete_powder

#execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0] replace
#execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1] replace
execute as @e[tag=bc.concrete_powder] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0] replace

tag @e[tag=bc.concrete_powder] remove bc.concrete_powder
tag @e[tag=bc.process_concrete] remove bc.process_concrete