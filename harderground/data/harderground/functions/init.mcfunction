scoreboard objectives add hg_posY dummy
scoreboard objectives add hg_posYDelta dummy

scoreboard objectives add hg_const dummy
scoreboard players set hg_seaLevel hg_const 64

tellraw @a [{"text":"[InsaneDataPack] ","color":"gold"},{"text":"HarderGround Loaded","color":"dark_green"}]