execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg_processed] store result score @s hg_posY run data get entity @s Pos[1]
execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg_processed] if score @s hg_posY < hg_seaLevel hg_const run tag @s add hg_process
execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg_processed] if score @s hg_posY >= hg_seaLevel hg_const run tag @s add hg_processed
execute as @e[tag=hg_process] run scoreboard players operation @s hg_posYDelta = hg_seaLevel hg_const

execute as @e[tag=hg_process] run scoreboard players operation @s hg_posYDelta -= @s hg_posY

#Fix for MC-197818
execute as @e[tag=hg_process] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get entity @s Health

execute as @e[tag=hg_process] run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Modifiers append value {Name:"hg_max_health",Amount:0.0,Operation:1,UUID:[I;-633757882,1012614665,-1758719176,-1591490096]}
execute as @e[tag=hg_process] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers append value {Name:"hg_movement_speed",Amount:0.0,Operation:1,UUID:[I;1176583236,-1570945107,-1853612076,847996867]}

execute as @e[tag=hg_process] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[{Name:"hg_max_health"}].Amount double 0.04 run scoreboard players get @s hg_posYDelta
execute as @e[tag=hg_process] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"hg_movement_speed"}].Amount double 0.02 run scoreboard players get @s hg_posYDelta


#scoreboard players reset @e[tag=hg_process] hg_posY
#scoreboard players reset @e[tag=hg_process] hg_posYDelta
tag @e[tag=hg_process] add hg_processed
tag @e[tag=hg_process] remove hg_process

#UUIDS
#Max Health: [I;-633757882,1012614665,-1758719176,-1591490096]
#Movement Speed: [I;1176583236,-1570945107,-1853612076,847996867]

#run this function every second
schedule function harderground:second 1s