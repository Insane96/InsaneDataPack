#run this function every half second
schedule function bettercauldrons:half_second 10

#execute as @e[type=item,nbt={Item:{id:"#bettercauldrons:colored_beds",Count:1b}}] run tag @s add colored_bed

function bettercauldrons:methods/concrete
function bettercauldrons:methods/bed
function bettercauldrons:methods/wool
function bettercauldrons:methods/carpet
function bettercauldrons:methods/terracotta