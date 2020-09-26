#run this function every tick
schedule function soulforge:tick 1

execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ minecraft:soul_fire align xyz run summon armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["sf.craft"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s if block ~ ~ ~ minecraft:soul_fire run kill @s

function soulforge:methods/work