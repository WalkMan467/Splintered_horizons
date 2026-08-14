# ===================================================
# 爆炸箭矢 範圍 / explosion arrow range

    ## Guide [ function weapons:type/arrows/explosion_arrow/range ] >>> 爆炸箭矢 範圍 / explosion arrow range
    ## Guide [ function weapons:type/arrows/explosion_arrow/monster ] >>> 爆炸箭矢 怪物 / explosion arrow monster
    ## Guide [ function weapons:type/arrows/explosion_arrow/use ] >>> 爆炸箭矢 觸發 / explosion arrow activate

# ===================================================

scoreboard players add #weapon.explosion_arrow.range global.main 3

particle minecraft:flame ^ ^0.25 ^3 0 0 0 0 1 normal


execute rotated ~3 0 \
    if score #weapon.explosion_arrow.range global.main matches ..360 run \
function weapons:type/arrows/explosion_arrow/range