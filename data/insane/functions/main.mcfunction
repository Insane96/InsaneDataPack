#Tick
scoreboard objectives add Tick dummy

scoreboard players add tick_second Tick 1
scoreboard players add tick_half_second Tick 1
scoreboard players add tick_ten_secs Tick 1
scoreboard players add tick_two Tick 1

function insane:bedrock_breaker/tick
function insane:xp_holder/tick
function insane:heart_canister/tick
function insane:feather_crops

#Help Book
execute if score tick_second Tick matches 20 run function insane:help_book


#Reset tick 10 second (200 ticks)
execute if score tick_ten_secs Tick matches 200.. run scoreboard players set tick_ten_secs Tick 0

#Reset tick second (20 ticks)
execute if score tick_second Tick matches 20.. run scoreboard players set tick_second Tick 0

#Reset tick half second (10 ticks)
execute if score tick_half_second Tick matches 10.. run scoreboard players set tick_half_second Tick 0

#Reset 2 tick timer (2 ticks)
execute if score tick_two Tick matches 2.. run scoreboard players set tick_two Tick 0