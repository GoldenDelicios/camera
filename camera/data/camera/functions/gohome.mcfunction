#Go home
execute unless score @s HomeDIM matches -1..1 run tellraw @s "No home found"
execute at @s[scores={HomeDIM=-1..1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags:["VarTp"]}
execute store result entity @e[tag=VarTp,limit=1] Pos[0] double 0.0625 run scoreboard players get @s HomeX
execute store result entity @e[tag=VarTp,limit=1] Pos[1] double 0.0625 run scoreboard players get @s HomeY
execute store result entity @e[tag=VarTp,limit=1] Pos[2] double 0.0625 run scoreboard players get @s HomeZ
execute store result entity @e[tag=VarTp,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeYaw
execute store result entity @e[tag=VarTp,limit=1] Rotation[1] float 1 run scoreboard players get @s HomePitch
execute at @s run tp @s @e[tag=VarTp,limit=1]
execute at @s in overworld run tp @s[scores={HomeDIM=0}] ~ ~ ~
execute at @s in the_nether run tp @s[scores={HomeDIM=-1}] ~ ~ ~
execute at @s in the_end run tp @s[scores={HomeDIM=1}] ~ ~ ~
kill @e[tag=VarTp]
