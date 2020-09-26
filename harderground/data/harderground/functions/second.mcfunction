execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg.processed] store result score @s hg.posY run data get entity @s Pos[1]
execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg.processed] if score @s hg.posY < #seaLevel hg.const run tag @s add hg.process
execute in minecraft:overworld as @e[type=#minecraft:hostiles,tag=!hg.processed] if score @s hg.posY >= #seaLevel hg.const run tag @s add hg.processed
execute as @e[tag=hg.process] run scoreboard players operation @s hg.posYDelta = #seaLevel hg.const

execute as @e[tag=hg.process] run scoreboard players operation @s hg.posYDelta -= @s hg.posY

#Fix for MC-197818
execute as @e[tag=hg.process] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run data get entity @s Health

execute as @e[tag=hg.process] run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Modifiers append value {Name:"hg.max_health",Amount:0.0,Operation:1,UUID:[I;-633757882,1012614665,-1758719176,-1591490096]}
execute as @e[tag=hg.process] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers append value {Name:"hg.movement_speed",Amount:0.0,Operation:1,UUID:[I;1176583236,-1570945107,-1853612076,847996867]}

execute as @e[tag=hg.process] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[{Name:"hg.max_health"}].Amount double 0.04 run scoreboard players get @s hg.posYDelta
execute as @e[tag=hg.process] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Name:"hg.movement_speed"}].Amount double 0.02 run scoreboard players get @s hg.posYDelta


#scoreboard players reset @e[tag=hg.process] hg.posY
#scoreboard players reset @e[tag=hg.process] hg.posYDelta
tag @e[tag=hg.process] add hg.processed
tag @e[tag=hg.process] remove hg.process

#UUIDS
#Max Health: [I;-633757882,1012614665,-1758719176,-1591490096]
#Movement Speed: [I;1176583236,-1570945107,-1853612076,847996867]

#run this function every second
schedule function harderground:second 1s