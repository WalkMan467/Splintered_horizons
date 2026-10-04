# ===================================================
# 渾沌之雷 符文箭矢 觸發 / chaotic thunder arrow activate

    ## Guide [ function weapons:type/arrows/chaotic_thunder_arrow/use ] >>> 渾沌之雷 符文箭矢 觸發 / chaotic thunder arrow activate
    ## Guide [ function weapons:type/arrows/chaotic_thunder_arrow/range ] >>> 渾沌之雷 符文箭矢 範圍 / chaotic thunder arrow range
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect

# ===================================================

scoreboard players reset #weapon.chaotic_thunder_arrow.range global.main
function weapons:type/arrows/chaotic_thunder_arrow/range

playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 0.5 2
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.creaking.death voice @a ~ ~1 ~ 1 0.75

particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 200 force @a
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 20 200


execute \
    as @e[distance=..4,type=!player] run \
damage @s 8 magic
scoreboard players set @a[distance=..4] weapon.effect.chaotic_thunder 100

advancement revoke @a only weapons:arrows/chaotic_thunder_arrow