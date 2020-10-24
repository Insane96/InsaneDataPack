function cavein:methods/trigger_collapse

tellraw @s[tag=!ci.preWarn] {"text":"You should probably place supports when you mine. Supports include logs. If you continue mining without supports, the cave will keep collapsing.","color":"red"}

tag @s[tag=!ci.preWarn] add ci.preWarn