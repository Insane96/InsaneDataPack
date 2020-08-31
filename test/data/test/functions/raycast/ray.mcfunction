execute if block ~ ~ ~ #test:raycast/blocks run function test:raycast/hit_block
scoreboard players add #distance idp.raycast 1
execute if score #hit idp.raycast matches 0 if score #distance idp.raycast matches ..60 positioned ^ ^ ^0.1 run function test:raycast/ray