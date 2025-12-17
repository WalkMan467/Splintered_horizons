execute unless score @p[sort=arbitrary] sys.mini_game.hit_the_bullseye.reset.id matches -2147483648..2147483647 run return 0

execute \
    as @a[sort=arbitrary,tag=!sys.mini_game.hit_the_bullseye.reset.user] \
    if score @s sys.mini_game.hit_the_bullseye.reset.id matches -2147483648..2147483647 run \
tag @a add sys.mini_game.hit_the_bullseye.reset.user

execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.bullseye,tag=!sys.mini_game.hit_the_bullseye.bullseye.actived,type=block_display] at @s \
    if score @s sys.mini_game.hit_the_bullseye.bullseye.id = @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reset.user] sys.mini_game.hit_the_bullseye.reset.id run \
function sys:mini_game/hit_the_bullseye/bullseye/reset

execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reward,tag=!sys.mini_game.hit_the_bullseye.reward.actived,type=marker] at @s \
    if score @s sys.mini_game.hit_the_bullseye.reward.id = @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reset.user] sys.mini_game.hit_the_bullseye.reset.id run \
function sys:mini_game/hit_the_bullseye/reward/reset

execute \
    as @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reset.user] at @s run \
function sys:mini_game/hit_the_bullseye/reset/end