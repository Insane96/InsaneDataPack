#run this function every tick
schedule function cavein:tick 1

#count down timer before collapsing cave
execute as @e[tag=ci.as_collapse] at @s run function cavein:methods/stall

tag @a[scores={ci.mineStone=1..}] add ci.hasMined
tag @a[scores={ci.mineAndesite=1..}] add ci.hasMined
tag @a[scores={ci.mineDiorite=1..}] add ci.hasMined
tag @a[scores={ci.mineGranite=1..}] add ci.hasMined
tag @a[scores={ci.mineIron=1..}] add ci.hasMined
tag @a[scores={ci.mineGold=1..}] add ci.hasMined
tag @a[scores={ci.mineCoal=1..}] add ci.hasMined
tag @a[scores={ci.mineLapis=1..}] add ci.hasMined
tag @a[scores={ci.mineDiamond=1..}] add ci.hasMined
tag @a[scores={ci.mineRedstone=1..}] add ci.hasMined
tag @a[scores={ci.mineEmerald=1..}] add ci.hasMined

execute as @a[tag=ci.hasMined] at @s run function cavein:methods/check

scoreboard players set @a[tag=ci.hasMined] ci.mineStone 0
scoreboard players set @a[tag=ci.hasMined] ci.mineAndesite 0
scoreboard players set @a[tag=ci.hasMined] ci.mineDiorite 0
scoreboard players set @a[tag=ci.hasMined] ci.mineGranite 0
scoreboard players set @a[tag=ci.hasMined] ci.mineIron 0
scoreboard players set @a[tag=ci.hasMined] ci.mineGold 0
scoreboard players set @a[tag=ci.hasMined] ci.mineCoal 0
scoreboard players set @a[tag=ci.hasMined] ci.mineLapis 0
scoreboard players set @a[tag=ci.hasMined] ci.mineDiamond 0
scoreboard players set @a[tag=ci.hasMined] ci.mineRedstone 0
scoreboard players set @a[tag=ci.hasMined] ci.mineEmerald 0
tag @a[tag=ci.hasMined] remove ci.hasMined

execute if entity @e[tag=ci.fall] run function cavein:methods/collapse