execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"ci.as_collapse"}',Tags:["ci.as_collapse"],Invisible:1b,Marker:1b,NoGravity:1b}

#Set the collapse time between 30 and 50 ticks
scoreboard players set @e[distance=..3,limit=1,sort=nearest,tag=ci.as_collapse] random 20
execute as @e[distance=..3,limit=1,sort=nearest,tag=ci.as_collapse] run function global:random/generate
execute as @e[distance=..3,limit=1,sort=nearest,tag=ci.as_collapse] run scoreboard players operation @s ci.trigTime = @s random_data
execute as @e[distance=..3,limit=1,sort=nearest,tag=ci.as_collapse] run scoreboard players operation @s ci.trigTime += min_trig_time ci.const

title @a[distance=10] actionbar {"text":"The cave is collapsing. Run!","color":"red"}