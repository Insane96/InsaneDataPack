execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:black_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:green_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:brown_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:blue_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:purple_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:cyan_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_gray_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:gray_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:pink_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lime_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:yellow_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:light_blue_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:magenta_wool"}}] run tag @s add bc.colored_wool
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:orange_wool"}}] run tag @s add bc.colored_wool
#execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:white_wool"}}] run tag @s add bc.colored_wool

#execute as @e[tag=bc.colored_wool] at @s if block ~ ~ ~ cauldron[level=1] run tag @s add bc.process_wool
#execute as @e[tag=bc.colored_wool] at @s if block ~ ~ ~ cauldron[level=2] run tag @s add bc.process_wool
execute as @e[tag=bc.colored_wool] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add bc.process_wool

execute as @e[tag=bc.colored_wool,tag=bc.process_wool] at @s run data modify entity @s Item.id set value "minecraft:white_wool"
execute as @e[tag=bc.colored_wool,tag=bc.process_wool] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=bc.colored_wool,tag=bc.process_wool] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=bc.colored_wool,tag=bc.process_wool] at @s run tag @s remove bc.colored_wool

#execute as @e[tag=bc.process_wool] at @s if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron[level=0]
#execute as @e[tag=bc.process_wool] at @s if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute as @e[tag=bc.process_wool] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=bc.process_wool] remove bc.process_wool