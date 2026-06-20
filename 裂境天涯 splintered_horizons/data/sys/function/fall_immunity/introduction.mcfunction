# ===================================================

# introduction



    ## Guide [ function sys:fall_immunity/introduction ] >>> introduction

    ## Guide [ function sys:fall_immunity/timer ] >>> timer

    ## Guide [ function sys:scoreboard ] >>> sys:scoreboard



# ===================================================



# 格式: 新增的 objectives 記分板要添加簡介 \

    # 1. 每句用一個虛擬玩家分數作為換行 \

    # 2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \

    # 3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色



# ====================================================================================================

scoreboard objectives add sys.fall_immunity dummy "摔落免疫"



scoreboard players set $introduction.1 sys.fall_immunity 2147483647

scoreboard players set $introduction.2 sys.fall_immunity 2147483646

scoreboard players set $introduction.3 sys.fall_immunity 2147483645

scoreboard players set $introduction.4 sys.fall_immunity 2147483644

scoreboard players set $introduction.5 sys.fall_immunity 2147483644



scoreboard players display numberformat $introduction.1 sys.fall_immunity fixed ""

scoreboard players display numberformat $introduction.2 sys.fall_immunity fixed ""

scoreboard players display numberformat $introduction.3 sys.fall_immunity fixed ""

scoreboard players display numberformat $introduction.4 sys.fall_immunity fixed ""

scoreboard players display numberformat $introduction.5 sys.fall_immunity fixed ""



scoreboard players display name $introduction.1 sys.fall_immunity {"text":"----------------------------------","color": "white"}

scoreboard players display name $introduction.2 sys.fall_immunity {"translate":"sys.fall_immunity.introduction.1",fallback:"支援 玩家、怪物、BOSS","color": "yellow"}

scoreboard players display name $introduction.3 sys.fall_immunity {"translate":"sys.fall_immunity.introduction.2",fallback:"1. 計分板: 免疫摔落傷害","color": "yellow"}

scoreboard players display name $introduction.4 sys.fall_immunity {"translate":"sys.fall_immunity.introduction.3",fallback:"2. Tag 標籤: 免疫 1 次摔落傷害並立即移除 Tag","color": "yellow"}

scoreboard players display name $introduction.5 sys.fall_immunity {"text":"----------------------------------","color": "white"}