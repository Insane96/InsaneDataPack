#run this function every half second
schedule function test:half_second 10

#/give @p potion{display:{Name:'{"text":"Glowing Sonar","italic":false}'},CustomPotionEffects:[{Id:24b,Amplifier:1b,Duration:400}],CustomPotionColor:16777215} 1
#/give @p potion{display:{Name:'{"text":"Glowing Sonar II","italic":false}'},CustomPotionEffects:[{Id:24b,Amplifier:2b,Duration:200}],CustomPotionColor:16777215} 1

execute as @a[nbt={ActiveEffects:[{Id:24b,Amplifier:1b}]}] at @s run effect give @e[distance=..24,type=!player] glowing 1 0 true
execute as @a[nbt={ActiveEffects:[{Id:24b,Amplifier:2b}]}] at @s run effect give @e[distance=..32,type=!player] glowing 1 0 true

execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}}] at @s if block ~ ~ ~ cauldron[level=3] if block ~ ~-1 ~ fire align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~ ~ ~ {Tags:["cauldron_potion"],NoGravity:1b,Invisible:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}}] at @s if block ~ ~ ~ cauldron[level=3] if block ~ ~-1 ~ fire run kill @s

execute as @e[tag=cauldron_potion] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}},limit=1,sort=nearest,distance=..0.5] if entity @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b},OnGround:1b},limit=1,sort=nearest,distance=..0.5] run tag @s add craft_glowing
execute as @e[tag=craft_glowing] at @s run give @p potion{display:{Name:'{"text":"Glowing Sonar","italic":false}'},CustomPotionEffects:[{Id:24b,Amplifier:1b,Duration:400}],CustomPotionColor:16777215} 1
execute as @e[tag=craft_glowing] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart",Count:1b}},limit=1,sort=nearest,distance=..0.5] 
execute as @e[tag=craft_glowing] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b},OnGround:1b},limit=1,sort=nearest,distance=..0.5]
kill @e[tag=craft_glowing]