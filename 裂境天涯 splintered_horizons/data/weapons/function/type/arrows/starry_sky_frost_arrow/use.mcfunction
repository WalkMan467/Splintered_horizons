# ===================================================
# 記憶之冰 符文箭矢 觸發 / starry sky frost arrow activate

    ## Guide [ function weapons:type/arrows/starry_sky_frost_arrow/use ] >>> 記憶之冰 符文箭矢 觸發 / starry sky frost arrow activate
    ## Guide [ function weapons:type/arrows/starry_sky_frost_arrow/range ] >>> 記憶之冰 符文箭矢 範圍 / starry sky frost arrow range
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect

# ===================================================

scoreboard players reset #weapon.starry_sky_frost_arrow.range global.main
function weapons:type/arrows/starry_sky_frost_arrow/range

playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 0.5 2
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.creaking.death voice @a ~ ~1 ~ 1 0.75

particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 200 force @a
particle minecraft:ominous_spawning ~ ~1 ~ 1 1 1 1 200


execute \
    as @e[distance=..4,type=!player] run \
damage @s 8 magic
scoreboard players set @a[distance=..4] weapon.effect.starry_sky_frost 100

execute \
    on owner run \
say ok

execute \
    on origin \
    if entity @s[type=player] run \
scoreboard players set @s weapon.effect.starry_sky_frost 100

advancement revoke @a only weapons:arrows/starry_sky_frost_arrow