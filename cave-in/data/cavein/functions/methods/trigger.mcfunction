#spawn an armorstand where there's #cavein:air and above a collapsable block
execute positioned ~ ~1 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~2 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~3 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~4 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~5 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~6 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~7 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~8 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~9 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}
execute positioned ~ ~10 ~ if block ~ ~ ~ #cavein:collapsable if block ~ ~-1 ~ #cavein:air run summon minecraft:armor_stand ~ ~ ~ {Tags:["ci.initiate"],Invisible:1b,NoGravity:1b,Marker:1b}

execute at @e[tag=ci.initiate,limit=1,sort=nearest] run playsound minecraft:item.totem.use block @a ~ ~ ~ 0.7 0

execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:stone run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:8.0f,FallHurtMax:20,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:stone"}}
execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:granite run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:14.0f,FallHurtMax:40,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:granite"}}
execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:diorite run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:17.0f,FallHurtMax:50,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:diorite"}}
execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:andesite run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:11.0f,FallHurtMax:30,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:andesite"}}
execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:dirt run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:18,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:dirt"}}
execute as @e[tag=ci.initiate] at @s if block ~ ~ ~ minecraft:cobblestone run summon falling_block ~ ~ ~ {DropItem:0b,HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:18,Tags:["ci.fall","ci.isFalling","ci.origin"],Time:0,BlockState:{Name:"minecraft:cobblestone"}}

scoreboard players set @e[tag=ci.fall] ci.fallTime 0
kill @e[tag=ci.initiate]
