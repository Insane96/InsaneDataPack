scoreboard players set #hit idp.raycast 1

execute align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["nether_spire_activation"]}

execute as @e[tag=nether_spire_activation] at @s if predicate test:check_respawn_anchor_structure run tag @s add nether_spire_can_activate

execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~4 ~8 air
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run fill ~-9 ~-1 ~-9 ~9 ~30 ~9 barrier keep
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run setblock ~ ~-1 ~ structure_block{ignoreEntities:0b,seed:0L,mode:"LOAD",posX:-8,posY:-1,posZ:-8,sizeX:17,integrity:1.0f,sizeY:32,sizeZ:17,name:"minecraft:nether_spire_boss"}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack keep
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack replace water
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack replace lava

execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~ ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}

#Prevent Respawn Anchor Right-click
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~ ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=nether_spire_activation,tag=nether_spire_can_activate] at @s run summon armor_stand ~ ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}

kill @e[tag=nether_spire_activation]