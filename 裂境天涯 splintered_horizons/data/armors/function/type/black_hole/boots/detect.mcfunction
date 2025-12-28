
execute \
    on vehicle \
    if entity @s[type=interaction,tag=sys.sit_down.act] \
    on passengers \
    if entity @s[type=player] run \
return 1