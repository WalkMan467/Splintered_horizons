
execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.bullseye,tag=sys.mini_game.hit_the_bullseye.bullseye.actived,type=block_display] at @s \
    if score @s sys.mini_game.hit_the_bullseye.bullseye.id = .hit sys.mini_game.hit_the_bullseye.main.id run \
return 0


execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reward,tag=sys.mini_game.hit_the_bullseye.reward.actived,type=marker] at @s \
    if score .hit sys.mini_game.hit_the_bullseye.main.id = @s sys.mini_game.hit_the_bullseye.reward.id run \
function sys:mini_game/hit_the_bullseye/reward/run