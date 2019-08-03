#Toggle Camera
execute as @s[gamemode=spectator] run function camera:gohome
execute as @s[gamemode=!spectator] run function camera:sethome
function camera:togglespectator
