execute as @e[type=armor_stand,tag=xp_holder] at @s unless block ~ ~ ~ minecraft:chest run tag @s add xpholder_remove

execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=..0}] at @s align xyz run tp ~.5 ~.5 ~.5
execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=..0}] at @s run summon item ~ ~ ~ {Passengers:[{id:"minecraft:item",Item:{id:"minecraft:ender_eye",Count:2b}},{id:"minecraft:item",Item:{id:"minecraft:bucket",Count:4b}},{id:"minecraft:item",Item:{id:"minecraft:diamond",Count:1b}}],Item:{id:"minecraft:hopper",Count:2b}}
execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=..0}] at @s run particle item experience_bottle ~ ~.5 ~ 0 0 0 0.1 100 
execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=..0}] at @s run playsound minecraft:block.glass.break block @a[distance=..10]
kill @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=..0}]