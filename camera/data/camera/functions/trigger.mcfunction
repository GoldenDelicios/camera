#Trigger
execute if score EnableCamera CameraConfig matches 1 run function camera:togglecamera
execute if score EnableCamera CameraConfig matches 2 run function camera:togglespectator
scoreboard players set @s Camera 0
scoreboard players enable @s Camera
