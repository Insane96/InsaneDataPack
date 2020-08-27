#Basic
execute if entity @s[tag=vh.tier_1] if block ~ ~ ~ hopper[enabled=true] run particle minecraft:portal ~-.35 ~.5 ~.35 0.2 0.2 0.2 0.2 20 force @a
execute if entity @s[tag=vh.tier_1] if block ~ ~ ~ hopper[enabled=true] align xyz positioned ~.5 ~.5 ~.5 positioned ~-2.5 ~-2.5 ~-2.5 run tag @e[type=item,dx=5,dy=5,dz=5,limit=1,sort=nearest] add vh.vacuum
execute as @e[tag=vh.vacuum] at @s run particle minecraft:item ender_eye ~ ~.4 ~ 0.1 0.1 0.1 0 10 force @a
execute as @e[tag=vh.vacuum] at @s run particle minecraft:dragon_breath ~ ~.4 ~ 0 0 0 .05 15 force @a
tp @e[tag=vh.vacuum] @e[tag=vacuum_hopper,tag=vh.tier_1,limit=1,sort=nearest]
execute as @e[tag=vh.vacuum] at @s align xyz positioned ~.5 ~.8 ~.5 run tp @s ~ ~ ~

#Advanced
# execute @e[tag=T4_VH1,score_T4_aec=4] ~ ~ ~ detect ~ ~ ~ hopper enabled=true particle portal ~-.35 ~.5 ~.35 0.3 0.3 0.3 0.# 4 60 force @a
# 
# execute @e[tag=T4_VH1,score_T4_aec=4] ~-4 ~-4 ~-4 detect ~4 ~4 ~4 hopper enabled=true scoreboard players tag @e[type=Item,# dx=8,dy=8,dz=8,c=1] add T4_vacuum1
# execute @e[tag=T4_vacuum1] ~ ~ ~ particle iconcrack ~ ~.4 ~ 0.1 0.1 0.1 0 15 force @a eye_of_ender
# execute @e[tag=T4_vacuum1] ~ ~ ~ particle dragonbreath ~ ~.4 ~ 0 0 0 .05 22 force @a
# tp @e[tag=T4_vacuum1] @e[tag=T4_VH1,c=1]
# tp @e[tag=T4_vacuum1] ~-.35 ~.5 ~.35
# 
# #Super
# execute @e[tag=T4_VH2,score_T4_aec=4] ~ ~ ~ detect ~ ~ ~ hopper enabled=true particle portal ~-.35 ~.5 ~.35 0.4 0.4 0.4 0.# 6 100 force @a
# 
# execute @e[tag=T4_VH2,score_T4_aec=4] ~-5 ~-11 ~-5 detect ~5 ~11 ~5 hopper enabled=true scoreboard players tag @e# [type=Item,dx=10,dy=22,dz=10,c=1] add T4_vacuum2
# execute @e[tag=T4_vacuum2] ~ ~ ~ particle iconcrack ~ ~.4 ~ 0.1 0.1 0.1 0 15 force @a 381
# execute @e[tag=T4_vacuum2] ~ ~ ~ particle dragonbreath ~ ~.4 ~ 0 0 0 .05 22 force @a
# tp @e[tag=T4_vacuum2] @e[tag=T4_VH2,c=1]
# tp @e[tag=T4_vacuum2] ~-.35 ~.5 ~.35
# 
# scoreboard players remove @e[type=armor_stand,tag=T4_VH_ia1]