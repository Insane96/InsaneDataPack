scoreboard objectives add ci.mineStone minecraft.mined:minecraft.stone
scoreboard objectives add ci.mineAndesite minecraft.mined:minecraft.andesite
scoreboard objectives add ci.mineDiorite minecraft.mined:minecraft.diorite
scoreboard objectives add ci.mineGranite minecraft.mined:minecraft.granite

#TODO maybe remove this and directly use Time from the falling block
scoreboard objectives add ci.fallTime dummy
scoreboard objectives add ci.trigTime dummy
#Counts how many blocks have collapsed
#scoreboard objectives add ci.collapseCount dummy
scoreboard objectives add ci.blockCounter dummy

scoreboard objectives add ci.const dummy
scoreboard players set min_trig_time ci.const 30