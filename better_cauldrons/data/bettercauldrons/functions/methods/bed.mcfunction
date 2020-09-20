execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_bed"}}] run tag @s add bc.colored_bed
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_bed"}}] run tag @s add bc.colored_bed
#execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_bed"}}] run tag @s add bc.colored_bed

execute as @e[tag=bc.colored_bed] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add bc.process_bed
execute as @e[tag=bc.colored_bed] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add bc.process_bed
execute as @e[tag=bc.colored_bed] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add bc.process_bed

execute as @e[tag=bc.colored_bed,tag=bc.process_bed] at @s run data modify entity @s Item.id set value "minecraft:white_bed"
execute as @e[tag=bc.colored_bed,tag=bc.process_bed] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=bc.colored_bed,tag=bc.process_bed] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=bc.colored_bed,tag=bc.process_bed] at @s run tag @s remove bc.colored_bed

execute as @e[tag=bc.process_bed] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
execute as @e[tag=bc.process_bed] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @e[tag=bc.process_bed] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=2]

tag @e[tag=bc.process_bed] remove bc.process_bed