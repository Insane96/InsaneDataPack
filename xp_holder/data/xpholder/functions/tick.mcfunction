function xpholder:methods/drop_stored_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s align xyz positioned ~.5 ~1.5 ~.5 run particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 .5 1

execute as @a[scores={xh_rclick_chest=1..}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function xpholder:raycast/start_ray
scoreboard players set @a[scores={xh_rclick_chest=1..}] xh_rclick_chest 0

#run this function every tick
schedule function xpholder:tick 1