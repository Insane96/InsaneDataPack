scoreboard players set #hit idp_raycast 1

execute align xyz positioned ~.5 ~.5 ~.5 as @e[tag=xp_holder,distance=..0.87,limit=1,sort=nearest] run title @a[tag=idp_raycast] actionbar ["",{"text":"XP Stored: ","color":"green"},{"score":{"name":"@s","objective":"xpHeld"},"color":"dark_green"}]