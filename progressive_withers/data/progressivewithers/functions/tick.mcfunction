#run this function every second
schedule function progressivewithers:tick 1

execute if entity @e[type=wither] run function progressivewithers:methods/main