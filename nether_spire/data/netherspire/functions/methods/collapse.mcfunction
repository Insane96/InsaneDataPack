execute as @e[tag=ns.collapse] at @s if entity @a[tag=collapse,distance=..40] run summon creeper ~ ~ ~ {Fuse:0,Silent:1b,Invulnerable:1b,CustomName:'{"text":"Nether Spire Collapse"}',ExplosionRadius:5}
execute as @e[tag=ns.collapse] at @s if entity @a[tag=collapse,distance=..40] run tp @s ~ ~-3.33 ~
execute as @e[tag=ns.collapse] at @s if entity @a[tag=collapse,distance=..40] run scoreboard players add @s ns.collapseTimer 1 
kill @e[tag=ns.collapse,scores={ns.collapseTimer=8..}]