execute store result score @s ci.blockCounter run clone ~-4 ~ ~-4 ~4 ~10 ~4 ~-4 ~ ~-4 filtered #cavein:mineable_stones force
#If there are at least 300 stone blocks in a 9x11x9 area around the player
tag @s[scores={ci.blockCounter=300..}] add ci.enoughStoneAround
execute if entity @s[tag=ci.enoughStoneAround] store result score @s ci.blockCounter run clone ~-7 ~ ~-7 ~7 ~3 ~7 ~-7 ~ ~-7 filtered #logs force
#execute @s[tag=T4_CI_phere,score_T4_pstatsblock=0] ~ ~ ~ clone ~-5 ~1 ~-5 ~5 ~8 ~5 ~-5 ~1 ~-5 filtered force planks -1
#If there are less than 3 logs in a 15x4x15 area around the player
tag @s[tag=ci.enoughStoneAround,scores={ci.blockCounter=..2}] add ci.noSupportAround
execute if entity @s[tag=ci.noSupportAround] store result score @s ci.blockCounter run clone ~ ~1 ~ ~ ~9 ~ ~ ~1 ~ filtered #cavein:mineable_stones force
#If there's no stone up to 8 blocks above the player
execute if entity @s[tag=ci.noSupportAround,scores={ci.blockCounter=0}] store result score @s ci.blockCounter run clone ~ ~1 ~ ~ ~8 ~ ~ ~1 ~ filtered minecraft:cobblestone force
#If there's no cobblestone up to 7 blocks above the player
execute if entity @s[tag=ci.noSupportAround,scores={ci.blockCounter=0}] store result score @s ci.blockCounter run clone ~ ~1 ~ ~ ~8 ~ ~ ~1 ~ filtered minecraft:dirt force
#If there's at least a dirt up to 7 blocks above the player
execute if entity @s[tag=ci.noSupportAround,scores={ci.blockCounter=1..}] run particle block minecraft:stone ~ ~3 ~ 2 1.5 2 0.01 120 normal @a
scoreboard players set @s[tag=ci.noSupportAround,scores={ci.blockCounter=1..}] random 100
execute if entity @s[tag=ci.noSupportAround,scores={ci.blockCounter=1..}] run function global:random/generate
#10% chance
execute if entity @s[tag=ci.noSupportAround,scores={ci.blockCounter=1..,random_data=..9}] run function cavein:methods/trigger_collapse_warning

tag @s[tag=ci.enoughStoneAround] remove ci.enoughStoneAround
tag @s[tag=ci.noSupportAround] remove ci.noSupportAround