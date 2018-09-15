scoreboard objectives add crop dummy
#crop Codes
#xy
#x crop type, 1 wheat, 2 potatoes, 3 carrots, 4 beetroots 
#y crop age
scoreboard objectives add farmland dummy
scoreboard objectives add onGround dummy
scoreboard objectives add fallTimer dummy

tag @a[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:feather_falling"}]}}]}] add has_feather_falling
scoreboard players set @a[nbt={OnGround:0b}] onGround 0
scoreboard players set @a[nbt={OnGround:1b}] onGround 1
scoreboard players add @a[scores={onGround=0}] fallTimer 1
#fallTimer must be >=10 to check crops

execute as @a[scores={onGround=0,fallTimer=10..},tag=has_feather_falling] at @s if block ~ ~-1 ~ farmland run tag @s add check_fall
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=0] run scoreboard players set @s crop 10
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=1] run scoreboard players set @s crop 11
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=2] run scoreboard players set @s crop 12
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=3] run scoreboard players set @s crop 13
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=4] run scoreboard players set @s crop 14
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=5] run scoreboard players set @s crop 15
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=6] run scoreboard players set @s crop 16
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ wheat[age=7] run scoreboard players set @s crop 17
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=0] run scoreboard players set @s crop 20
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=1] run scoreboard players set @s crop 21
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=2] run scoreboard players set @s crop 22
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=3] run scoreboard players set @s crop 23
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=4] run scoreboard players set @s crop 24
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=5] run scoreboard players set @s crop 25
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=6] run scoreboard players set @s crop 26
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ potatoes[age=7] run scoreboard players set @s crop 27
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=0] run scoreboard players set @s crop 30
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=1] run scoreboard players set @s crop 31
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=2] run scoreboard players set @s crop 32
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=3] run scoreboard players set @s crop 33
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=4] run scoreboard players set @s crop 34
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=5] run scoreboard players set @s crop 35
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=6] run scoreboard players set @s crop 36
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ carrots[age=7] run scoreboard players set @s crop 37
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ beetroots[age=0] run scoreboard players set @s crop 40
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ beetroots[age=1] run scoreboard players set @s crop 41
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ beetroots[age=2] run scoreboard players set @s crop 42
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~ ~ beetroots[age=3] run scoreboard players set @s crop 43
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=1] run scoreboard players set @s farmland 1
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=2] run scoreboard players set @s farmland 2
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=3] run scoreboard players set @s farmland 3
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=4] run scoreboard players set @s farmland 4
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=5] run scoreboard players set @s farmland 5
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=6] run scoreboard players set @s farmland 6
execute as @a[scores={onGround=0},tag=check_fall] at @s if block ~ ~-1 ~ farmland[moisture=7] run scoreboard players set @s farmland 7
execute as @a[scores={onGround=0},tag=check_fall] run gamerule doTileDrops false

execute as @e[scores={onGround=1},tag=check_fall] run gamerule doTileDrops true
execute as @e[scores={onGround=1,crop=10},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=0]
execute as @e[scores={onGround=1,crop=11},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=1]
execute as @e[scores={onGround=1,crop=12},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=2]
execute as @e[scores={onGround=1,crop=13},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=3]
execute as @e[scores={onGround=1,crop=14},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=4]
execute as @e[scores={onGround=1,crop=15},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=5]
execute as @e[scores={onGround=1,crop=16},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=6]
execute as @e[scores={onGround=1,crop=17},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ wheat[age=7]
execute as @e[scores={onGround=1,crop=20},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=0]
execute as @e[scores={onGround=1,crop=21},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=1]
execute as @e[scores={onGround=1,crop=22},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=2]
execute as @e[scores={onGround=1,crop=23},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=3]
execute as @e[scores={onGround=1,crop=24},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=4]
execute as @e[scores={onGround=1,crop=25},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=5]
execute as @e[scores={onGround=1,crop=26},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=6]
execute as @e[scores={onGround=1,crop=27},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ potatoes[age=7]
execute as @e[scores={onGround=1,crop=30},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=0]
execute as @e[scores={onGround=1,crop=31},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=1]
execute as @e[scores={onGround=1,crop=32},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=2]
execute as @e[scores={onGround=1,crop=33},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=3]
execute as @e[scores={onGround=1,crop=34},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=4]
execute as @e[scores={onGround=1,crop=35},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=5]
execute as @e[scores={onGround=1,crop=36},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=6]
execute as @e[scores={onGround=1,crop=37},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ carrots[age=7]
execute as @e[scores={onGround=1,crop=40},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ beetroots[age=0]
execute as @e[scores={onGround=1,crop=41},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ beetroots[age=1]
execute as @e[scores={onGround=1,crop=42},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ beetroots[age=2]
execute as @e[scores={onGround=1,crop=43},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~ ~ beetroots[age=3]
execute as @e[scores={onGround=1,farmland=1},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=1]
execute as @e[scores={onGround=1,farmland=2},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=2]
execute as @e[scores={onGround=1,farmland=3},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=3]
execute as @e[scores={onGround=1,farmland=4},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=4]
execute as @e[scores={onGround=1,farmland=5},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=5]
execute as @e[scores={onGround=1,farmland=6},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=6]
execute as @e[scores={onGround=1,farmland=7},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland[moisture=7]
execute as @e[scores={onGround=1},tag=check_fall] at @s if block ~ ~-1 ~ dirt unless block ~ ~ ~ farmland run setblock ~ ~-1 ~ farmland
scoreboard players set @a[scores={crop=0..,onGround=1},tag=check_fall] crop 0
scoreboard players set @a[scores={farmland=0..,onGround=1},tag=check_fall] farmland 0
execute as @a[scores={onGround=1},tag=check_fall] run tag @s remove check_fall

tag @a[tag=has_feather_falling] remove has_feather_falling
scoreboard players set @a[scores={onGround=1}] fallTimer 0
