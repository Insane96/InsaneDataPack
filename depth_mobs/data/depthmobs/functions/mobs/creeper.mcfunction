scoreboard players set @s random 100
execute as @s run function global:random/generate

data modify entity @s[scores={random_data=84..93},y=30,dy=-30] {} merge value {CustomName:'{"text":"Hypercreeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.max_health",Base:10},{Name:"minecraft:generic.follow_range",Base:80}],Health:10}

data modify entity @s[scores={random_data=0..19},y=20,dy=-20] {} merge value {CustomName:'{"text":"Blinding Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_blindness","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=20..39},y=20,dy=-20] {} merge value {CustomName:'{"text":"Immobilizing Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_immobilize","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=40..69},y=20,dy=-20] {} merge value {CustomName:'{"text":"Death Creeper"}',ExplosionRadius:5,Fuse:35,Tags:["dm.creeper_death"]}

data modify entity @s[scores={random_data=..14},y=40,dy=-20] {} merge value {CustomName:'{"text":"Weakening Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_weakness","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=15..29},y=40,dy=-20] {} merge value {CustomName:'{"text":"Fatigue Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_mining_fatigue","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=..14},y=60,dy=-20] {} merge value {CustomName:'{"text":"Hungering Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_hunger","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=15..29},y=60,dy=-20] {} merge value {CustomName:'{"text":"Slowing Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.creeper_slowness","dm.creeper_gas"],ExplosionRadius:0,Fuse:15}

# Pig jockey
execute as @s[scores={random_data=94..}] run tag @e[type=pig,distance=..4,sort=nearest,tag=!dm.processed,limit=1] add dm.pig_jockey
execute as @e[type=pig,distance=..4,tag=dm.pig_jockey,limit=1,sort=nearest] at @s run summon pig ~ ~ ~ {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm.processed"],Passengers:[{id:"minecraft:creeper",Tags:["dm.processed"]}]}

tag @s add dm.processed
scoreboard players reset @s random_data