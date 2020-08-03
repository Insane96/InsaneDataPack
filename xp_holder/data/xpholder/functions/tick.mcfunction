function xpholder:methods/drop_stored_xp

execute as @e[tag=xp_holder,type=minecraft:armor_stand] at @s align xyz positioned ~.5 ~1.5 ~.5 run particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 .5 1

#run this function every tick
schedule function xpholder:tick 1