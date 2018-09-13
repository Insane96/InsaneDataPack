#Basic Bedrock Breaker
execute at @s run summon armor_stand ~ ~-.5 ~ {Invisible:1b,Tags:["basic_bedrock_breaker"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b},{}],NoGravity:1b,Marker:1b,Small:1b,Fire:32000,Pose:{Head:[90f,0f,0f]}}
execute as @e[type=armor_stand,tag=basic_bedrock_breaker] at @s align xyz run tp @s ~0.5 ~0.07 ~0.5
execute at @s run setblock ~ ~ ~ bedrock
kill @s