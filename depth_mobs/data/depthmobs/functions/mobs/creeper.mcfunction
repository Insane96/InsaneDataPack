scoreboard players set @s random 100
execute as @s run function global:random/generate

data modify entity @s[scores={random_data=84..93},y=30,dy=-30] {} merge value {CustomName:'{"text":"Hypercreeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4},{Name:"minecraft:generic.max_health",Base:9},{Name:"minecraft:generic.follow_range",Base:80}],Health:9}

data modify entity @s[scores={random_data=0..19},y=20,dy=-20] {} merge value {CustomName:'{"text":"Blinding Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm_creeper_blindness","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=20..39},y=20,dy=-20] {} merge value {CustomName:'{"text":"Immobilizing Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:4.0}],Tags:["dm_creeper_immobilize","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=40..69},y=20,dy=-20] {} merge value {CustomName:'{"text":"Death Creeper"}',ExplosionRadius:4,Fuse:35,Tags:["dm_creeper_death"]}

data modify entity @s[scores={random_data=..14},y=40,dy=-20] {} merge value {CustomName:'{"text":"Weakening Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm_creeper_weakness","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=15..29},y=40,dy=-20] {} merge value {CustomName:'{"text":"Fatigue Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm_creeper_mining_fatigue","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=..14},y=60,dy=-20] {} merge value {CustomName:'{"text":"Hungering Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm_creeper_hunger","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

data modify entity @s[scores={random_data=15..29},y=60,dy=-20] {} merge value {CustomName:'{"text":"Slowing Gas Creeper"}',Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3}],Tags:["dm_creeper_slowness","dm_creeper_gas"],ExplosionRadius:0,Fuse:15}

# Pig jockey
#execute @s[score_T4_math_output_min=94] ~ ~ ~ scoreboard players tag @e[type=Pig,r=5] add T4_DM_jp
#execute @e[type=Pig,r=5,tag=T4_DM_jp] ~ ~ ~ tp @e[score_T4_math_output_min=94,type=Creeper,r=5] ~ ~-1000 ~

tag @s add dm_processed
scoreboard players reset @s random_data