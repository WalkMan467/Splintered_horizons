# ===================================================
# introduction

    ## Guide [ function sys:dummy_mob/introduction ] >>> introduction
    ## Guide [ function sys:dummy_mob/timer ] >>> timer

# ===================================================

# 格式: 新增的 objectives 記分板要添加簡介 \
    1. 每句用一個虛擬玩家分數作為換行 \
    2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \
    3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色

# ====================================================================================================
scoreboard objectives add sys.dummy_mob dummy "不可選中"

scoreboard players set $introduction.1 sys.dummy_mob 2147483647
scoreboard players set $introduction.2 sys.dummy_mob 2147483646
scoreboard players set $introduction.3 sys.dummy_mob 2147483645
scoreboard players set $introduction.4 sys.dummy_mob 2147483644

scoreboard players display numberformat $introduction.1 sys.dummy_mob fixed ""
scoreboard players display numberformat $introduction.2 sys.dummy_mob fixed ""
scoreboard players display numberformat $introduction.3 sys.dummy_mob fixed ""
scoreboard players display numberformat $introduction.4 sys.dummy_mob fixed ""

scoreboard players display name $introduction.1 sys.dummy_mob {"text":"-------------------","color": "white"}
scoreboard players display name $introduction.2 sys.dummy_mob {"translate":"sys.dummy_mob.introduction.1",fallback:"支援 玩家、怪物、BOSS","color": "yellow"}
scoreboard players display name $introduction.3 sys.dummy_mob {"translate":"sys.dummy_mob.introduction.2",fallback:"可使大部分的選中機制失效","color": "yellow"}
scoreboard players display name $introduction.4 sys.dummy_mob {"text":"-------------------","color": "white"}