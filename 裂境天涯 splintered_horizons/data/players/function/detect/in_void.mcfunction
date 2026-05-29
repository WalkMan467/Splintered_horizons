execute \
    if entity @s[gamemode=adventure] run \
return 0

execute \
    if entity @s[gamemode=survival] run \
return 0

execute \
    if entity @s[gamemode=spectator,tag=animation] run \
return 0

execute \
    unless entity @s[type=player] run \
return 0

advancement grant @s only players:detect/in_void