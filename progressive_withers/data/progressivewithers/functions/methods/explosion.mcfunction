scoreboard players add @a[distance=..60] pw_difficulty 1
scoreboard players operation @s pw_difficulty += @a[distance=..60] pw_difficulty

execute if entity @s[scores={pw_difficulty=12..14}] run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:11,CustomName:'{"text":"Wither"}',DeathLootTable:"empty"}
execute if entity @s[scores={pw_difficulty=15..18}] run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:13,CustomName:'{"text":"Wither"}',DeathLootTable:"empty"}
execute if entity @s[scores={pw_difficulty=19..}] run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:14,CustomName:'{"text":"Wither"}',DeathLootTable:"empty"}
