tag @s add idp_raycast
scoreboard players set #hit idp_raycast 0
scoreboard players set #distance idp_raycast 0
function global:raycast/ray
tag @s remove idp_raycast