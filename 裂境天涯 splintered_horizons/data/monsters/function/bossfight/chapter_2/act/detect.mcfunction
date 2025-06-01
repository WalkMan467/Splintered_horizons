execute if entity @s[gamemode=spectator] if entity @s[tag=animation] run return 1
execute if entity @s[gamemode=!spectator] run return 1