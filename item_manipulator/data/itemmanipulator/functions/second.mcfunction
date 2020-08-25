execute as @a[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"ItemManipulator"}}]}] run tag @s add im_hasBook
execute as @a[tag=im_hasBook] run clear @s minecraft:written_book{title:"ItemManipulator"} 1
execute as @a[tag=im_hasBook] run give @s written_book{Enchantments:[{}],title:"Item Manipulator",author:"Insane96MCP",pages:['[{"text":"  Item Manipulator\\n\\n","color":"gold","bold":true},{"text":"       No Gravity\\n","color":"black","bold":false},{"text":"        ","color":"black","bold":false},{"text":"Yes","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Makes the nearest item not affected by Gravity"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 00011"}},{"text":" / ","color":"black","bold":false},{"text":"No","color":"dark_red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Makes the nearest item affected by Gravity"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 00010"}},{"text":"\\n\\n"},{"text":"       No Pick Up\\n","color":"black","bold":false},{"text":"        ","color":"black","bold":false},{"text":"Yes","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Player will no longer be able to pick up the nearest item"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 00101"}},{"text":" / ","color":"black","bold":false},{"text":"No","color":"dark_red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Player will be able to pick up the nearest item"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 00100"}},{"text":"\\n\\n"},{"text":"       No Despawn\\n\\n","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"The item will no longer be able to despawn"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 01001"}},{"text":"   Center Vertically\\n","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Centers the nearest item on the x and z axis"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 10001"}},{"text":"          Center","color":"dark_green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Centers the nearest item on all the axis (best results with No Gravity)"}]},"clickEvent":{"action":"run_command","value":"/trigger im_trigger set 10002"}}]']} 1
tag @a[tag=im_hasBook] remove im_hasBook

# 00000
# cdpgv
# v: value
# c: center (1 center, 2 center y too)
# d: NoDespawn (1 no despawn)
# g: NoGravity (0 gravity, 1 no gravity)
# p: NoPickUp (0 can be picked up, 1 cannot)

execute as @a[scores={im_trigger=00010}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] NoGravity set value 0
execute as @a[scores={im_trigger=00011}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] NoGravity set value 1

execute as @a[scores={im_trigger=00100}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] PickupDelay set value 20
execute as @a[scores={im_trigger=00101}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] PickupDelay set value 32767

execute as @a[scores={im_trigger=01001}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] Age set value -32768

execute as @a[scores={im_trigger=10001}] at @s as @e[type=item,limit=1,distance=..4,sort=nearest] at @s align xz run tp @s ~.5 ~ ~.5
execute as @a[scores={im_trigger=10002}] at @s as @e[type=item,limit=1,distance=..4,sort=nearest] at @s align xyz run tp @s ~.5 ~.5 ~.5

#Glow the changed item for 2 seconds
execute as @a[scores={im_trigger=1..}] at @s run data modify entity @e[type=item,limit=1,distance=..4,sort=nearest] Glowing set value 1
execute as @a[scores={im_trigger=1..}] at @s run scoreboard players set @e[type=item,limit=1,distance=..4,sort=nearest] im_glowing 1

scoreboard players remove @e[scores={im_glowing=0..}] im_glowing 1
execute as @e[scores={im_glowing=-1}] run data modify entity @s Glowing set value 0
scoreboard players reset @e[scores={im_glowing=-1}] im_glowing

scoreboard players set @a[scores={im_trigger=1..}] im_trigger 0
scoreboard players enable @a[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"Item Manipulator"}}]}] im_trigger

#run this function every second
schedule function itemmanipulator:second 1s