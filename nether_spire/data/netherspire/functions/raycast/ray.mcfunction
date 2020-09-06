execute if block ~ ~ ~ #netherspire:raycast/blocks run function netherspire:raycast/hit_block
scoreboard players add #distance idp.raycast 1
execute if score #hit idp.raycast matches 0 if score #distance idp.raycast matches ..60 positioned ^ ^ ^0.1 run function netherspire:raycast/ray