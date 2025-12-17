execute \
    as @a[sort=arbitrary] at @s \
    if score @s sys.mini_game.hit_the_bullseye.main.id matches -2147483648..2147483647 run \
function sys:mini_game/hit_the_bullseye/set_id

execute \
    if score .index sys.mini_game.hit_the_bullseye.main.id matches ..1 run \
scoreboard players set .index sys.mini_game.hit_the_bullseye.main.id 1

schedule function sys:mini_game/hit_the_bullseye/bullseye/main 1t
schedule function sys:mini_game/hit_the_bullseye/reset/main 1t
schedule function sys:mini_game/hit_the_bullseye/remove/main 1t

schedule function sys:mini_game/hit_the_bullseye/main 1t