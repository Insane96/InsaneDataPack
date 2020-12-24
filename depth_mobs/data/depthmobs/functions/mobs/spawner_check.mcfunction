execute at @s store result score @s dm.blockCounter run clone ~-4 ~-2 ~-4 ~4 ~2 ~4 ~-4 ~-2 ~-4 filtered minecraft:spawner force
tag @s add dm.processed_tick
tag @s[scores={dm.blockCounter=1..}] add dm.processed