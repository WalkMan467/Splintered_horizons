# ===================================================
# 爆炸箭矢 觸發 / explosion arrow activate

    ## Guide [ function weapons:type/arrows/explosion_arrow/use ] >>> 爆炸箭矢 觸發 / explosion arrow activate
    ## Guide [ function weapons:type/arrows/explosion_arrow/range ] >>> 爆炸箭矢 範圍 / explosion arrow range
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect

# ===================================================

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1
particle minecraft:lava ~ ~1 ~ 1 1 1 1 40
particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 normal @a

scoreboard players reset #weapon.explosion_arrow.range global.main
function weapons:type/arrows/explosion_arrow/range


execute \
    as @e[distance=..3.6,type=!player,type=!#minecraft:dummy_mob] run \
damage @s 8 player_explosion

advancement revoke @a only weapons:arrows/explosion_arrow