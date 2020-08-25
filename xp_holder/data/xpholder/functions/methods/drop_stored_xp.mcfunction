execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=100..}] at @s align xyz run summon minecraft:experience_orb ~.5 ~.75 ~.5 {Value:100}
execute as @e[type=minecraft:armor_stand,tag=xpholder_remove,scores={xpHeld=100..}] at @s run scoreboard players remove @s xpHeld 100

execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=10..99}] at @s align xyz run summon minecraft:experience_orb ~.5 ~.75 ~.5 {Value:10}
execute as @e[type=minecraft:armor_stand,tag=xpholder_remove,scores={xpHeld=10..99}] at @s run scoreboard players remove @s xpHeld 10

execute as @e[tag=xpholder_remove,tag=xp_holder,scores={xpHeld=1..9}] at @s align xyz run summon minecraft:experience_orb ~.5 ~.75 ~.5 {Value:1}
execute as @e[type=minecraft:armor_stand,tag=xpholder_remove,scores={xpHeld=1..9}] at @s run scoreboard players remove @s xpHeld 1