execute positioned 0.0 0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["player_direction"]}
summon tnt ^ ^1 ^1 {Fuse:200,Tags:["granade","set_direction"]}
data modify entity @e[tag=set_direction,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=player_direction,limit=1] Pos
tag @e[tag=set_direction] remove set_direction
kill @e[tag=player_direction]
scoreboard players set @s rightClick 0