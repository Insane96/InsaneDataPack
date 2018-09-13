execute if score tick_half_second Tick matches 10 run function insane:xp_holder/deposit
execute if score tick_half_second Tick matches 10 run function insane:xp_holder/withdraw
execute if score tick_two Tick matches 2 run function insane:xp_holder/chest_right_click
execute if score tick_second Tick matches 20 run function insane:xp_holder/craft
execute if score tick_second Tick matches 20 run function insane:xp_holder/uncraft
execute if score tick_second Tick matches 20 run function insane:xp_holder/prevent_nearby
execute if score tick_ten_secs Tick matches 200 run function insane:xp_holder/init

function insane:xp_holder/animation