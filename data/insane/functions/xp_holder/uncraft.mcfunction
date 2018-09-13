execute as @e[type=armor_stand,tag=xp_holder] at @s unless block ~ ~ ~ minecraft:chest run tag @s add to_remove

execute as @e[tag=to_remove,tag=xp_holder] at @s align xyz run tp ~.5 ~.5 ~.5
execute as @e[tag=to_remove,tag=xp_holder] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:hopper",Count:2b},Motion:[0.0d,0.4d,0.0d]}
execute as @e[tag=to_remove,tag=xp_holder] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:2b},Motion:[0.0d,0.4d,0.0d]}
execute as @e[tag=to_remove,tag=xp_holder] at @s run particle item experience_bottle ~ ~.5 ~ 0 0 0 0.1 100 
execute as @e[tag=to_remove,tag=xp_holder] at @s run playsound minecraft:block.glass.break block @a[distance=..10]
execute as @e[tag=to_remove,tag=xp_holder] at @s run summon experience_orb ~ ~ ~ {Value:413,Motion:[0.0d,0.5d,0.0d]}
kill @e[tag=to_remove,tag=xp_holder]