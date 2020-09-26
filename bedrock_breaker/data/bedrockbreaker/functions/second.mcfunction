#run this function every second
schedule function bedrockbreaker:second 1s

function bedrockbreaker:methods/craft

#add 1 to the bedrock breaker counter
scoreboard players add @e[type=armor_stand,tag=bedrock_breaker] bedrockBreaker 1

function bedrockbreaker:methods/finish