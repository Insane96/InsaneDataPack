scoreboard objectives add xpHeld dummy
scoreboard objectives add playerXp xp

scoreboard objectives add xh_rclick_chest minecraft.custom:open_chest

tellraw @a[gamemode=creative] [{"text":"[InsaneDataPack] ","color":"gold"},{"text":"XP Holder Loaded","color":"dark_green"}]