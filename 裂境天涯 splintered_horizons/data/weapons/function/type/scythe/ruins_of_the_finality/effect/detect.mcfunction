# ===================================================
# 鐮 終焉之墟 效果 偵測 / scythe ruins of the finality effect detect

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/detect ] >>> 鐮 終焉之墟 效果 偵測 / scythe ruins of the finality effect detect
    ## Guide [ function players:detect/inventory_changed ] >>> 偵測 inventory changed / detect inventory changed

# ===================================================


execute \
    store result score @s weapon.ruins_of_the_finality.effect.detect run \
clear @s *[minecraft:custom_data~{type:"scythe",weapon:"ruins_of_the_finality"}] 0