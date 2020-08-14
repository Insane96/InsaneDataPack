scoreboard objectives add dm_tick dummy

tellraw @a [{"text":"[InsaneDataPack] ","color":"gold"},{"text":"Depth Mobs Loaded","color":"dark_green"}]

# execute as @e[tag=tnt_throw] at @s run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,65280,255],FadeColors:[I;16776960,65535,16711935]}]}}},ShotAtAngle:1}