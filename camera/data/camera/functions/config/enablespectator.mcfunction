#Enable Spectator
scoreboard objectives add Camera trigger
scoreboard players set EnableCamera CameraConfig 2
scoreboard players enable * Camera
tellraw @s {"text":"Enabled Spectator","color":"green"}
