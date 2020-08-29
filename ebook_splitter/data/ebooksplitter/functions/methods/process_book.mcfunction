execute if data entity @s Item.tag.StoredEnchantments[0] run tag @s add es.has_enchantment_0
execute if data entity @s Item.tag.StoredEnchantments[1] run tag @s add es.has_enchantment_1
execute if data entity @s Item.tag.StoredEnchantments[2] run tag @s add es.has_enchantment_2
execute if data entity @s Item.tag.StoredEnchantments[3] run tag @s add es.has_enchantment_3

execute if entity @s[tag=es.has_enchantment_0] run scoreboard players add @p es.requiredXp 50
execute if entity @s[tag=es.has_enchantment_1] run scoreboard players add @p es.requiredXp 50
execute if entity @s[tag=es.has_enchantment_2] run scoreboard players add @p es.requiredXp 50
execute if entity @s[tag=es.has_enchantment_3] run scoreboard players add @p es.requiredXp 50

execute if score @p es.playerXp < @p es.requiredXp run tp @s @p
execute if score @p es.playerXp < @p es.requiredXp run data modify entity @s PickupDelay set value 0
execute if score @p es.playerXp < @p es.requiredXp run tag @s remove es.has_enchantment_0
execute if score @p es.playerXp < @p es.requiredXp run tag @s remove es.has_enchantment_1
execute if score @p es.playerXp < @p es.requiredXp run tag @s remove es.has_enchantment_2
execute if score @p es.playerXp < @p es.requiredXp run tag @s remove es.has_enchantment_3
execute if score @p es.playerXp < @p es.requiredXp run tellraw @p [{"text":"Not enough XP. Required XP: ","clickEvent":{"action":"open_url","value":"https://minecraft.gamepedia.com/Experience#Leveling_up"},"hoverEvent":{"action":"show_text","contents":{"text":"Click here to open the wiki page with the Levels / XP table"}}},{"score":{"name":"@p","objective":"es.requiredXp"},"color":"dark_green","clickEvent":{"action":"open_url","value":"https://minecraft.gamepedia.com/Experience#Leveling_up"},"hoverEvent":{"action":"show_text","contents":{"text":"Click here to open the wiki page with the Levels / XP table"}}}]
execute if score @p es.playerXp < @p es.requiredXp run scoreboard players reset @p es.requiredXp

execute if entity @s[tag=es.has_enchantment_0] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{}},Tags:["es.enchanted_book_0"]}
data modify entity @e[tag=es.enchanted_book_0,limit=1,sort=nearest] Item.tag.StoredEnchantments append from entity @s Item.tag.StoredEnchantments[0]
tag @e[tag=es.enchanted_book_0] remove es.enchanted_book_0

execute if entity @s[tag=es.has_enchantment_1] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{}},Tags:["es.enchanted_book_1"]}
data modify entity @e[tag=es.enchanted_book_1,limit=1,sort=nearest] Item.tag.StoredEnchantments append from entity @s Item.tag.StoredEnchantments[1]
tag @e[tag=es.enchanted_book_1] remove es.enchanted_book_1

execute if entity @s[tag=es.has_enchantment_2] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{}},Tags:["es.enchanted_book_2"]}
data modify entity @e[tag=es.enchanted_book_2,limit=1,sort=nearest] Item.tag.StoredEnchantments append from entity @s Item.tag.StoredEnchantments[2]
tag @e[tag=es.enchanted_book_2] remove es.enchanted_book_2

execute if entity @s[tag=es.has_enchantment_3] run summon item ~ ~ ~ {PickupDelay:40,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{}},Tags:["es.enchanted_book_3"]}
data modify entity @e[tag=es.enchanted_book_3,limit=1,sort=nearest] Item.tag.StoredEnchantments append from entity @s Item.tag.StoredEnchantments[3]
tag @e[tag=es.enchanted_book_3] remove es.enchanted_book_3

execute if score @p es.requiredXp matches 1.. run particle enchant ~ ~1 ~ 0 0 0 0.5 500

execute if score @p es.requiredXp matches 1.. run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 2.0
execute if score @p es.requiredXp matches 1.. run playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1.0 1.7
execute as @p[scores={es.requiredXp=1..}] run function ebooksplitter:methods/pay_xp

kill @s[tag=es.has_enchantment_0,tag=es.has_enchantment_1]