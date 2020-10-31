scoreboard objectives add ci.mineStone minecraft.mined:minecraft.stone
scoreboard objectives add ci.mineAndesite minecraft.mined:minecraft.andesite
scoreboard objectives add ci.mineDiorite minecraft.mined:minecraft.diorite
scoreboard objectives add ci.mineGranite minecraft.mined:minecraft.granite
scoreboard objectives add ci.mineIron minecraft.mined:minecraft.iron_ore
scoreboard objectives add ci.mineGold minecraft.mined:minecraft.gold_ore
scoreboard objectives add ci.mineCoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add ci.mineLapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add ci.mineDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ci.mineRedstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add ci.mineEmerald minecraft.mined:minecraft.emerald_ore

#TODO maybe remove this and directly use Time from the falling block
scoreboard objectives add ci.fallTime dummy
scoreboard objectives add ci.trigTime dummy
scoreboard objectives add ci.blockCounter dummy

scoreboard objectives add ci.const dummy
scoreboard players set min_trig_time ci.const 30