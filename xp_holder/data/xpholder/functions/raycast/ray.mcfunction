execute if block ~ ~ ~ #xpholder:raycast/blocks run function xpholder:raycast/hit_block
scoreboard players add #distance idp_raycast 1
execute if score #hit idp_raycast matches 0 if score #distance idp_raycast matches ..60 positioned ^ ^ ^0.1 run function xpholder:raycast/ray