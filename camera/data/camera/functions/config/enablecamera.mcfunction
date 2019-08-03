#Enable Camera
scoreboard objectives add Camera trigger
scoreboard players set EnableCamera CameraConfig 1
scoreboard players enable * Camera
tellraw @s {"text":"Enabled Camera","color":"green"}
