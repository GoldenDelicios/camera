#Go to respawn point
#	SpawnForced:0b == slept in bed 
#	SpawnForced:1b == set using /spawnpoint
#	SpawnForced does not exist == no spawn point set
tellraw @s[nbt=!{SpawnForced:0b}, nbt=!{SpawnForced:1b}] "No respawn point found"
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags:["VarTp"]}
execute store result entity @e[tag=VarTp,limit=1] Pos[0] double 1 run data get entity @s SpawnX
execute store result entity @e[tag=VarTp,limit=1] Pos[1] double 1 run data get entity @s SpawnY
execute store result entity @e[tag=VarTp,limit=1] Pos[2] double 1 run data get entity @s SpawnZ
execute store result entity @e[tag=VarTp,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=VarTp,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute unless entity @s[nbt=!{SpawnForced:0b}, nbt=!{SpawnForced:1b}] at @s run tp @s @e[tag=VarTp,limit=1]
execute at @s[nbt={SpawnForced:0b}] in overworld run tp @s ~0.5 ~0.5625 ~0.5
execute at @s[nbt={SpawnForced:1b}] in overworld run tp @s ~0.5 ~ ~0.5
kill @e[tag=VarTp]
