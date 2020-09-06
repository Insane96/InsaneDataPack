#run this function every tick
schedule function netherspire:tick 1

execute as @a[advancements={netherspire:triggers/fully_charge_respawn_anchor=true}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function netherspire:raycast/start_ray
advancement revoke @a[advancements={netherspire:triggers/fully_charge_respawn_anchor=true}] only netherspire:triggers/fully_charge_respawn_anchor