
execute \
    as @n[sort=arbitrary,distance=..1.5,type=#arrows] at @s run \
function sys:mini_game/hit_the_bullseye/bullseye/on_hit/1

data modify entity @s block_state set value {Name: "minecraft:air"}
tag @s remove sys.mini_game.hit_the_bullseye.bullseye.actived

scoreboard players operation .hit sys.mini_game.hit_the_bullseye.main.id = @s sys.mini_game.hit_the_bullseye.bullseye.id
function sys:mini_game/hit_the_bullseye/bullseye/detect