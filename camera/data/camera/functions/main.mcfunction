#Main
execute as @a[scores={Camera=1..}] run function camera:trigger
execute if score EnableCamera CameraConfig matches 1.. run scoreboard players enable @a Camera
