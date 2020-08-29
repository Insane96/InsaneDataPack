#run this function every second
schedule function ebooksplitter:second 1s

execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b}}] at @s if block ~ ~-1 ~ grindstone run tag @s add es.enchanted_book

execute as @e[tag=es.enchanted_book] at @s if data entity @s Item.tag.StoredEnchantments[0] if data entity @s Item.tag.StoredEnchantments[1] run function ebooksplitter:methods/process_book