
execute \
    unless score @p[sort=arbitrary] sys.mini_game.hit_the_bullseye.remove.id matches -2147483648..2147483647 run \
return 0


execute \
    as @a[sort=arbitrary,tag=!sys.mini_game.hit_the_bullseye.remove.user] \
    if score @s sys.mini_game.hit_the_bullseye.remove.id matches -2147483648..2147483647 run \
tag @a add sys.mini_game.hit_the_bullseye.remove.user


execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.bullseye,tag=!sys.mini_game.hit_the_bullseye.remove.target,type=block_display] at @s \
    if score @s sys.mini_game.hit_the_bullseye.bullseye.id = @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.remove.user] sys.mini_game.hit_the_bullseye.remove.id run \
tag @s add sys.mini_game.hit_the_bullseye.remove.target


execute \
    as @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.reward,tag=!sys.mini_game.hit_the_bullseye.remove.target,type=marker] at @s \
    if score @s sys.mini_game.hit_the_bullseye.reward.id = @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.remove.user] sys.mini_game.hit_the_bullseye.remove.id run \
tag @s add sys.mini_game.hit_the_bullseye.remove.target

kill @e[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.remove.target,tag=sys.mini_game.hit_the_bullseye.entity,type=#minecraft:dummy_mob]


execute \
    as @p[sort=arbitrary,tag=sys.mini_game.hit_the_bullseye.remove.user] at @s run \
function sys:mini_game/hit_the_bullseye/remove/end