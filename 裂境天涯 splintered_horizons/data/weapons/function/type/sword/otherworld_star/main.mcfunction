# ===================================================
# 劍 異界晨星 主迴圈 / sword otherworld star loop

    ## Guide [ function weapons:type/sword/otherworld_star/main ] >>> 劍 異界晨星 主迴圈 / sword otherworld star loop
    ## Guide [ function weapons:type/sword/otherworld_star/fallstar/use ] >>> 劍 異界晨星 fallstar 觸發 / sword otherworld star fallstar activate
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================


execute \
    if score @s weapon.otherworld_star.timer matches 1 \
    if score @s weapon.effect.resplendence matches 1.. run \
tag @s add weapon.otherworld_star.effect.speed

execute \
    if score @s weapon.otherworld_star.timer matches 1 run \
tag @s add weapon.otherworld_star.effect.user

execute \
    if score @s weapon.otherworld_star.timer matches 1 \
    positioned ^ ^ ^4 \
    rotated ~ 0 \
    positioned ~ ~10 ~ \
    summon block_display run \
function weapons:type/sword/otherworld_star/fallstar/use