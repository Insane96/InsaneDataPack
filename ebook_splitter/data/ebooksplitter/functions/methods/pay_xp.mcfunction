xp add @s -10 points
scoreboard players remove @s es.requiredXp 10
execute if score @s es.requiredXp matches 1.. run function ebooksplitter:methods/pay_xp