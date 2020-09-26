#Basic
execute if entity @s[tag=vh.tier_1] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 0.2 20 normal @a
execute if entity @s[tag=vh.tier_1] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[type=item,dx=2,dy=2,dz=2,limit=1,sort=nearest] add vh.vacuum
execute as @e[tag=vh.vacuum] at @s run particle minecraft:item ender_eye ~ ~.4 ~ 0.1 0.1 0.1 0 10 force @a
execute as @e[tag=vh.vacuum] at @s run particle minecraft:dragon_breath ~ ~.4 ~ 0 0 0 .05 15 force @a
tp @e[tag=vh.vacuum] @e[tag=vh.hopper,tag=vh.tier_1,limit=1,sort=nearest]
execute as @e[tag=vh.vacuum] at @s align xyz positioned ~.5 ~.8 ~.5 run tp @s ~ ~ ~

#Advanced
execute if entity @s[tag=vh.tier_2] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 0.4 40 normal @a
execute if entity @s[tag=vh.tier_2] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 positioned ~-3.5 ~-3.5 ~-3.5 run tag @e[type=item,dx=6,dy=6,dz=6,limit=2,sort=nearest] add vh.vacuum
execute as @e[tag=vh.vacuum] at @s run particle minecraft:item ender_eye ~ ~.4 ~ 0.1 0.1 0.1 0 10 force @a
execute as @e[tag=vh.vacuum] at @s run particle minecraft:dragon_breath ~ ~.4 ~ 0 0 0 .05 15 force @a
tp @e[tag=vh.vacuum] @e[tag=vh.hopper,tag=vh.tier_2,limit=1,sort=nearest]
execute as @e[tag=vh.vacuum] at @s align xyz positioned ~.5 ~.8 ~.5 run tp @s ~ ~ ~

# #Super
execute if entity @s[tag=vh.tier_3] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:portal ~ ~ ~ 0.6 0.6 0.6 0.6 60 normal @a
execute if entity @s[tag=vh.tier_3] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 positioned ~-5.5 ~-5.5 ~-5.5 run tag @e[type=item,dx=10,dy=10,dz=10,limit=3,sort=nearest] add vh.vacuum
execute as @e[tag=vh.vacuum] at @s run particle minecraft:item ender_eye ~ ~.4 ~ 0.1 0.1 0.1 0 10 force @a
execute as @e[tag=vh.vacuum] at @s run particle minecraft:dragon_breath ~ ~.4 ~ 0 0 0 .05 15 force @a
tp @e[tag=vh.vacuum] @e[tag=vh.hopper,tag=vh.tier_3,limit=1,sort=nearest]
execute as @e[tag=vh.vacuum] at @s align xyz positioned ~.5 ~.8 ~.5 run tp @s ~ ~ ~