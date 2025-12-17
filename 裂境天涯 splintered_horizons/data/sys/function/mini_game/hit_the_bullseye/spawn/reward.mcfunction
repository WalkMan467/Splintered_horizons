execute \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    unless block ~ ~ ~ #penetrate run \
function sys:mini_game/hit_the_bullseye/reward/fail

execute \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    unless block ~ ~ ~ #penetrate run \
return 0

execute \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 \
    if block ~ ~ ~ #penetrate run \
summon marker ~ ~ ~ \
    { \
        Rotation: \
            [ \
                0.0f,\
                0.0f \
            ], \
        Tags: \
            [ \
                "summon", \
                "sys.mini_game.hit_the_bullseye.reward", \
                "sys.mini_game.hit_the_bullseye.reward.actived", \
                "sys.mini_game.hit_the_bullseye.entity" \
            ] \
    }

tag @s add sys.mini_game.hit_the_bullseye.reward.user

execute \
    as @n[sort=arbitrary,distance=..10,tag=summon,tag=sys.mini_game.hit_the_bullseye.reward,type=marker] at @s run \
function sys:mini_game/hit_the_bullseye/reward/setup

tag @s remove sys.mini_game.hit_the_bullseye.reward.user

schedule function sys:mini_game/hit_the_bullseye/reset/main 1t