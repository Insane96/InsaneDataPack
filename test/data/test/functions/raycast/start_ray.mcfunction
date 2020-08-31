tag @s add idp.raycast
scoreboard players set #hit idp.raycast 0
scoreboard players set #distance idp.raycast 0
function test:raycast/ray
tag @s remove idp.raycast