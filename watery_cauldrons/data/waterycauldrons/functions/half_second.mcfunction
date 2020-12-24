#run this function every half second
schedule function waterycauldrons:half_second 10

#execute as @e[type=item,nbt={Item:{id:"#waterycauldrons:colored_beds",Count:1b}}] run tag @s add colored_bed

function waterycauldrons:methods/concrete
function waterycauldrons:methods/bed
function waterycauldrons:methods/wool
function waterycauldrons:methods/carpet
function waterycauldrons:methods/terracotta