execute as @e[tag=ns.piglin,dx=16,dy=31,dz=16] at @s run summon piglin ~ ~ ~ {Tags:["ns.piglin_equip"],CannotHunt:1b,IsImmuneToZombification:1b}
kill @e[tag=ns.piglin]
execute as @e[tag=ns.piglin_brute,dx=16,dy=31,dz=16] at @s run summon piglin_brute ~ ~ ~ {Tags:["ns.piglin_brute_equip"],CannotHunt:1b,IsImmuneToZombification:1b}
kill @e[tag=ns.piglin_brute]