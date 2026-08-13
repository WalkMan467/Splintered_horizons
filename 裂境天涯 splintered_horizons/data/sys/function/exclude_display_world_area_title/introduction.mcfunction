# ===================================================

# introduction



    ## Guide [ function sys:exclude_display_world_area_title/introduction ] >>> introduction

    ## Guide [ function sys:exclude_display_world_area_title/timer ] >>> timer

    ## Guide [ function sys:scoreboard ] >>> sys:scoreboard



# ===================================================



# 格式: 新增的 objectives 記分板要添加簡介 \

    # 1. 每句用一個虛擬玩家分數作為換行 \

    # 2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \

    # 3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色



# ====================================================================================================

scoreboard objectives add sys.exclude_display_world_area_title dummy "隱藏顯示區域名"



scoreboard players set $introduction.1 sys.exclude_display_world_area_title 2147483647

scoreboard players set $introduction.2 sys.exclude_display_world_area_title 2147483646

scoreboard players set $introduction.3 sys.exclude_display_world_area_title 2147483645

scoreboard players set $introduction.4 sys.exclude_display_world_area_title 2147483644

scoreboard players set $introduction.5 sys.exclude_display_world_area_title 2147483644



scoreboard players display numberformat $introduction.1 sys.exclude_display_world_area_title fixed ""

scoreboard players display numberformat $introduction.2 sys.exclude_display_world_area_title fixed ""

scoreboard players display numberformat $introduction.3 sys.exclude_display_world_area_title fixed ""

scoreboard players display numberformat $introduction.4 sys.exclude_display_world_area_title fixed ""

scoreboard players display numberformat $introduction.5 sys.exclude_display_world_area_title fixed ""



scoreboard players display name $introduction.1 sys.exclude_display_world_area_title {"text":"----------------------------------","color": "white"}

scoreboard players display name $introduction.2 sys.exclude_display_world_area_title {"translate":"sys.exclude_display_world_area_title.introduction.1",fallback:"支援 玩家","color": "yellow"}

scoreboard players display name $introduction.3 sys.exclude_display_world_area_title {"translate":"sys.exclude_display_world_area_title.introduction.2",fallback:"1. 計分板: 暫時性使區域名稱不顯示","color": "yellow"}

scoreboard players display name $introduction.4 sys.exclude_display_world_area_title {"translate":"sys.exclude_display_world_area_title.introduction.3",fallback:"2. Tag 標籤: 對象擁有 Tag 時區域名稱一律不顯示","color": "yellow"}

scoreboard players display name $introduction.5 sys.exclude_display_world_area_title {"text":"----------------------------------","color": "white"}