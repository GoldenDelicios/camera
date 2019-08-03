#Toggle Spectator
effect give @s minecraft:resistance 5 5 true
tag @s[gamemode=spectator] add sp
gamemode creative @s[gamemode=spectator,scores={CameraGameType=1}]
gamemode adventure @s[gamemode=spectator,scores={CameraGameType=2}]
gamemode survival @s[gamemode=spectator]
execute store result score @s CameraGameType run data get entity @s playerGameType
gamemode spectator @s[tag=!sp]
tag @s remove sp
