#Set home
execute store result score @s HomeDIM run data get entity @s Dimension
execute store result score @s HomeX run data get entity @s Pos[0] 16
execute store result score @s HomeY run data get entity @s Pos[1] 16
execute store result score @s HomeZ run data get entity @s Pos[2] 16
execute store result score @s HomeYaw run data get entity @s Rotation[0]
execute store result score @s HomePitch run data get entity @s Rotation[1]
