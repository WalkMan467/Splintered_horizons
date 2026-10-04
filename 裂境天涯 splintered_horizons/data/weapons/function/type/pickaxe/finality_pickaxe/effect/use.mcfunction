# ===================================================
# 終焉鎬 效果 觸發 / finality pickaxe effect activate

    ## Guide [ function weapons:type/pickaxe/finality_pickaxe/effect/use ] >>> 終焉鎬 效果 觸發 / finality pickaxe effect activate

# ===================================================

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s times 10 0 10

scoreboard players set #math global.main 100
scoreboard players operation @s player.ultimate -= #math global.main