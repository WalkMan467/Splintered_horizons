execute \
    as @n[sort=arbitrary,tag=player.death,type=player] at @s run \
function sys:respawnpoint/tp/use

execute \
    if entity @p[sort=arbitrary,tag=player.death] run \
schedule function sys:respawnpoint/tp/main 1t