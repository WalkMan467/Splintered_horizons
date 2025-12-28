
execute \
    as @e[tag=sys.mini_game.hit_the_bullseye.bullseye,tag=sys.mini_game.hit_the_bullseye.bullseye.actived,type=block_display] at @s \
    if entity @n[sort=arbitrary,distance=..1.5,type=#arrows] run \
function sys:mini_game/hit_the_bullseye/bullseye/on_hit/0