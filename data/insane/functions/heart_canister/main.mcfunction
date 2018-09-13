execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{SkullOwner:{Id:"b49b235e-9091-4491-9172-db56ba8f2eb5",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWNhYTc0NDZiZTg3NGJmMWExNGVkMWZjZWZjYzBhMDkyMzM2YzFiZjViZjQ2NWU5ZDI1NGRlZTM0YWZlYTc5In19fQ=="}]}}}}]}] run scoreboard players add @s heartCanister 1
execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{SkullOwner:{Id:"13941c55-d8c8-4844-be69-73bb9469f6e1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVkNjFhNzg5NmZiYjczY2Y1ZWVjOWNhOTEyNTJmM2ZiZWNhYThlN2YyZmQyZDIzMWI3MzEyODZkNTY5MSJ9fX0="}]}}}}]}] run scoreboard players add @s heartCanister 1

execute as @a[scores={heartCanister=0},nbt={ActiveEffects:[{Id:21b}]}] run effect clear @s minecraft:health_boost
execute as @a[scores={heartCanister=1},nbt={ActiveEffects:[{Id:21b,Amplifier:1b}]}] run effect clear @s minecraft:health_boost
execute as @a[scores={heartCanister=1},nbt={ActiveEffects:[{Id:21b,Amplifier:0b}]}] run scoreboard players set @s heartCanister 0
execute as @a[scores={heartCanister=2},nbt={ActiveEffects:[{Id:21b,Amplifier:1b}]}] run scoreboard players set @s heartCanister 0
effect give @a[scores={heartCanister=1}] minecraft:health_boost 100000 0 true
effect give @a[scores={heartCanister=2}] minecraft:health_boost 100000 1 true
scoreboard players set @a heartCanister 0