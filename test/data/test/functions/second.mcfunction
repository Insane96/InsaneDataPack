execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},tag=!flair] run tag @s add flair
execute as @e[tag=flair] run data modify entity @s CustomNameVisible set value 1b
scoreboard players add @e[tag=flair] count 1
execute as @e[tag=flair,scores={count=1}] run data modify entity @s CustomName set value '{"text":"3"}'
execute as @e[tag=flair,scores={count=2}] run data modify entity @s CustomName set value '{"text":"2"}'
execute as @e[tag=flair,scores={count=3}] run data modify entity @s CustomName set value '{"text":"1"}'
execute as @e[tag=flair,scores={count=4}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:1,LifeTime:800,Tags:["f_flair"]}
execute as @e[tag=flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 8 0
execute as @e[tag=flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 8 0
kill @e[tag=flair,scores={count=4}]

execute as @e[tag=f_flair] run scoreboard players add @s count 1
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 16 0.8
execute as @e[tag=f_flair,scores={count=4}] at @s run particle flame ~ ~ ~ 0 0 0 5 12000 force
execute as @e[tag=f_flair,scores={count=4}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["flair_armor_stand"]}
kill @e[tag=f_flair,scores={count=4}]

#run this function every second
schedule function test:second 1s

scoreboard players set @a[scores={tor.deaths=1..}] tor.damageTaken 0
scoreboard players set @a[scores={tor.deaths=1..}] tor.deaths 0

execute as @a[scores={tor.damageTaken=60..}] at @s run particle block redstone_block ~ ~1.4 ~ 0.4 0.6 0.4 0.05 5 normal @a
title @a[scores={tor.damageTaken=60..}] actionbar {"text":"You're bleeding! If you don't stop taking damage you'll face consequences.","color":"red"}
effect give @a[scores={tor.damageTaken=80..}] slowness 2 0 true
effect give @a[scores={tor.damageTaken=100..}] hunger 2 1 true
effect give @a[scores={tor.damageTaken=120..}] slowness 2 1 true
effect give @a[scores={tor.damageTaken=130..}] weakness 2 0 true

# Complete incapacitation
effect give @a[scores={tor.damageTaken=160..}] blindness 2 0 true
effect give @a[scores={tor.damageTaken=160..}] slowness 2 4 true
title @a[scores={tor.damageTaken=160..}] actionbar {"text":"Incapacitated! You took too much damage! Please rest for a while.","color":"red"}
effect give @a[scores={tor.damageTaken=190..}] slowness 2 9 true

scoreboard players remove @a[scores={tor.damageTaken=1..}] tor.damageTaken 3
scoreboard players set @a[scores={tor.damageTaken=..-1}] tor.damageTaken 0