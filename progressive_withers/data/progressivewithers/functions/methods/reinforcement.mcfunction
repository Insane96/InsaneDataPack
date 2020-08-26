execute if block ~ ~3 ~ bedrock run tp @s ~ ~-2 ~
execute if block ~ ~2 ~ bedrock run tp @s ~ ~-2 ~
execute if block ~ ~1 ~ bedrock run tp @s ~ ~-2 ~
execute if block ~ ~ ~ bedrock run tp @s ~ ~-2 ~

execute if entity @s[scores={pw_difficulty=3..5}] run function progressivewithers:methods/reinforcement/1
execute if entity @s[scores={pw_difficulty=6..8}] run function progressivewithers:methods/reinforcement/2
execute if entity @s[scores={pw_difficulty=9..11}] run function progressivewithers:methods/reinforcement/3
execute if entity @s[scores={pw_difficulty=12..14}] run function progressivewithers:methods/reinforcement/4
execute if entity @s[scores={pw_difficulty=15..18}] run function progressivewithers:methods/reinforcement/5
execute if entity @s[scores={pw_difficulty=19..}] run function progressivewithers:methods/reinforcement/6