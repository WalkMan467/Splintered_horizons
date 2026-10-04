# ===================================================
# 爆炸箭矢 怪物 / explosion arrow monster

    ## Guide [ function weapons:type/arrows/explosion_arrow/monster ] >>> 爆炸箭矢 怪物 / explosion arrow monster
    ## Guide [ function weapons:type/arrows/explosion_arrow/range ] >>> 爆炸箭矢 範圍 / explosion arrow range

# ===================================================

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1
particle minecraft:lava ~ ~1 ~ 1 1 1 1 40
particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 normal @a

scoreboard players reset #weapon.explosion_arrow.range global.main
function weapons:type/arrows/explosion_arrow/range


execute \
    unless score #nightmare main.difficulty matches 1.. \
    as @a[distance=..3.6] run \
damage @s 8 monsters:chapter_1/explosion_arrow_skeleton/damage

advancement revoke @a only weapons:arrows/enemy/explosion_arrow