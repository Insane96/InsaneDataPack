execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:sticky_piston"}}] run tag @s add wc.sticky_piston

execute as @e[tag=wc.sticky_piston] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add wc.process_piston

execute as @e[tag=wc.sticky_piston,tag=wc.process_piston] at @s run data modify entity @s Item.id set value "minecraft:piston"
execute as @e[tag=wc.sticky_piston,tag=wc.process_piston] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=wc.sticky_piston,tag=wc.process_piston] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=wc.sticky_piston,tag=wc.process_piston] at @s run tag @s remove wc.colored_wool

execute as @e[tag=wc.process_piston] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=wc.process_piston] remove wc.process_piston
tag @e[tag=wc.sticky_piston] remove wc.sticky_piston