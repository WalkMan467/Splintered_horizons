playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1
particle minecraft:lava ~ ~1 ~ 1 1 1 1 40
particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 normal @a

scoreboard players reset #weapon.explosion_arrow.range global.main
function weapons:type/arrows/explosion_arrow/range


execute \
    as @a[distance=..3.6] run \
damage @s 8 player_explosion

advancement revoke @a only weapons:arrows/enemy/explosion_arrow