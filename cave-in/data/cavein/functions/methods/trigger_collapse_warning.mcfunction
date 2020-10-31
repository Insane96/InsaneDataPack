function cavein:methods/trigger_collapse

tellraw @s[tag=!ci.preWarn] {"text":"You should probably place supports (Logs) when you mine. If you continue mining without supports, the cave will keep collapsing.","color":"red"}

tag @s[tag=!ci.preWarn] add ci.preWarn