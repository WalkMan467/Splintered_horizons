
execute \
    if score @s weapon.otherworld_star.timer matches 1 \
    if score @s weapon.effect.resplendence matches 1.. run \
tag @s add weapon.otherworld_star.effect.speed

execute \
    if score @s weapon.otherworld_star.timer matches 1 \
    positioned ^ ^ ^4 rotated ~ 0 \
    positioned ~ ~10 ~ summon block_display run \
function weapons:type/sword/otherworld_star/fallstar/use