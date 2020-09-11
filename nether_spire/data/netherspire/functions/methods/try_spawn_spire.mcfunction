execute align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["ns.activation"]}

execute as @e[tag=ns.activation] at @s if predicate netherspire:check_respawn_anchor_structure run tag @s add ns.can_activate

execute as @e[tag=ns.can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~4 ~8 air
execute as @e[tag=ns.can_activate] at @s run fill ~-9 ~-1 ~-9 ~9 ~30 ~9 barrier keep
execute as @e[tag=ns.can_activate] at @s run setblock ~ ~-1 ~ structure_block{ignoreEntities:0b,seed:0L,mode:"LOAD",posX:-8,posY:-1,posZ:-8,sizeX:17,integrity:1.0f,sizeY:32,sizeZ:17,name:"netherspire:nether_spire"}
execute as @e[tag=ns.can_activate] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=ns.can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack keep
execute as @e[tag=ns.can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack replace water
execute as @e[tag=ns.can_activate] at @s run fill ~-8 ~-2 ~-8 ~8 ~-10 ~8 netherrack replace lava

execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~ ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Tags:["ns.controller"]}

#Prevent Respawn Anchor Right-click
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~.5 ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~-.5 ~-1.5 ~ {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~ ~-1.5 ~.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~ ~-1.5 ~-.5 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b}

#Collapse Armor Stands
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~-3.75 ~28.5 ~-3.75 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Tags:["ns.collapse"],Marker:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~3.75 ~28.5 ~-3.75 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Tags:["ns.collapse"],Marker:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~-3.75 ~28.5 ~3.75 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Tags:["ns.collapse"],Marker:1b}
execute as @e[tag=ns.can_activate] at @s run summon armor_stand ~3.75 ~28.5 ~3.75 {Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Invisible:1b,Tags:["ns.collapse"],Marker:1b}

execute as @e[tag=ns.can_activate] at @s positioned ~-8.5 ~-2.5 ~-8.5 run function netherspire:methods/spawn_entities

kill @e[tag=ns.activation]