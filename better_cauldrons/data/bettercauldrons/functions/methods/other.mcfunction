execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:sticky_piston"}}] run tag @s add bc.sticky_piston

execute as @e[tag=bc.sticky_piston] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add bc.process_piston

execute as @e[tag=bc.sticky_piston,tag=bc.process_piston] at @s run data modify entity @s Item.id set value "minecraft:piston"
execute as @e[tag=bc.sticky_piston,tag=bc.process_piston] at @s run playsound entity.player.splash block @a ~ ~ ~ 1.0 0.5
execute as @e[tag=bc.sticky_piston,tag=bc.process_piston] at @s align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:splash ~ ~ ~ 0.1 0 0.1 0 50
execute as @e[tag=bc.sticky_piston,tag=bc.process_piston] at @s run tag @s remove bc.colored_wool

execute as @e[tag=bc.process_piston] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

tag @e[tag=bc.process_piston] remove bc.process_piston
tag @e[tag=bc.sticky_piston] remove bc.sticky_piston