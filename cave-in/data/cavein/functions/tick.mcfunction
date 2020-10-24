#run this function every tick
schedule function cavein:tick 1

#count down timer before collapsing cave
execute as @e[tag=ci.as_collapse] at @s run function cavein:methods/stall

tag @a[scores={ci.mineStone=1..}] add ci.hasMined
tag @a[scores={ci.mineAndesite=1..}] add ci.hasMined
tag @a[scores={ci.mineDiorite=1..}] add ci.hasMined
tag @a[scores={ci.mineGranite=1..}] add ci.hasMined

execute as @a[tag=ci.hasMined] at @s run function cavein:methods/check

scoreboard players set @a[tag=ci.hasMined] ci.mineStone 0
scoreboard players set @a[tag=ci.hasMined] ci.mineAndesite 0
scoreboard players set @a[tag=ci.hasMined] ci.mineDiorite 0
scoreboard players set @a[tag=ci.hasMined] ci.mineGranite 0
tag @a[tag=ci.hasMined] remove ci.hasMined

execute if entity @e[tag=ci.fall] run function cavein:methods/collapse