# ===================================================

# Introduction


    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================



# 格式: 新增的 objectives 記分板要添加簡介 \

    # 1. 每句用一個虛擬玩家分數作為換行 \

    # 2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \

    # 3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色



# ====================================================================================================

scoreboard objectives add player.void_protection.x dummy "[玩家] 虛空保護專用 回朔紀錄點 x"
scoreboard objectives add player.void_protection.y dummy "[玩家] 虛空保護專用 回朔紀錄點 y"
scoreboard objectives add player.void_protection.z dummy "[玩家] 虛空保護專用 回朔紀錄點 z"


scoreboard players set $introduction.1 player.void_protection.x 2147483647
scoreboard players set $introduction.2 player.void_protection.x 2147483646
scoreboard players set $introduction.3 player.void_protection.x 2147483645
scoreboard players set $introduction.4 player.void_protection.x 2147483644
scoreboard players set $introduction.5 player.void_protection.x 2147483643
scoreboard players set $introduction.6 player.void_protection.z 2147483642

scoreboard players set $introduction.1 player.void_protection.y 2147483647
scoreboard players set $introduction.2 player.void_protection.y 2147483646
scoreboard players set $introduction.3 player.void_protection.y 2147483645
scoreboard players set $introduction.4 player.void_protection.y 2147483644
scoreboard players set $introduction.5 player.void_protection.y 2147483643
scoreboard players set $introduction.6 player.void_protection.z 2147483642

scoreboard players set $introduction.1 player.void_protection.z 2147483647
scoreboard players set $introduction.2 player.void_protection.z 2147483646
scoreboard players set $introduction.3 player.void_protection.z 2147483645
scoreboard players set $introduction.4 player.void_protection.z 2147483644
scoreboard players set $introduction.5 player.void_protection.z 2147483643
scoreboard players set $introduction.6 player.void_protection.z 2147483642


scoreboard players display numberformat $introduction.1 player.void_protection.x fixed ""
scoreboard players display numberformat $introduction.2 player.void_protection.x fixed ""
scoreboard players display numberformat $introduction.3 player.void_protection.x fixed ""
scoreboard players display numberformat $introduction.4 player.void_protection.x fixed ""
scoreboard players display numberformat $introduction.5 player.void_protection.x fixed ""
scoreboard players display numberformat $introduction.6 player.void_protection.x fixed ""

scoreboard players display numberformat $introduction.1 player.void_protection.y fixed ""
scoreboard players display numberformat $introduction.2 player.void_protection.y fixed ""
scoreboard players display numberformat $introduction.3 player.void_protection.y fixed ""
scoreboard players display numberformat $introduction.4 player.void_protection.y fixed ""
scoreboard players display numberformat $introduction.5 player.void_protection.y fixed ""
scoreboard players display numberformat $introduction.6 player.void_protection.y fixed ""

scoreboard players display numberformat $introduction.1 player.void_protection.z fixed ""
scoreboard players display numberformat $introduction.2 player.void_protection.z fixed ""
scoreboard players display numberformat $introduction.3 player.void_protection.z fixed ""
scoreboard players display numberformat $introduction.4 player.void_protection.z fixed ""
scoreboard players display numberformat $introduction.5 player.void_protection.z fixed ""
scoreboard players display numberformat $introduction.6 player.void_protection.z fixed ""


scoreboard players display name $introduction.1 player.void_protection.x {"text":"-------------------","color": "white"}
scoreboard players display name $introduction.2 player.void_protection.x {"translate":"player.void_protection.x.introduction.1",fallback:"進入死亡區域或為虛空 (y: -125) 時:","color": "yellow"}
scoreboard players display name $introduction.3 player.void_protection.x {"translate":"player.void_protection.x.introduction.2",fallback:"創造 / 觀察者模式不受到虛空傷害","color": "yellow"}
scoreboard players display name $introduction.4 player.void_protection.x {"translate":"player.void_protection.x.introduction.2",fallback:"生存 / 冒險 / 特殊技能動畫將造成真實傷害","color": "yellow"}
scoreboard players display name $introduction.5 player.void_protection.x {"translate":"player.void_protection.x.introduction.2",fallback:"並回朔至原本陸地的位置","color": "yellow"}
scoreboard players display name $introduction.6 player.void_protection.x {"text":"-------------------","color": "white"}

scoreboard players display name $introduction.1 player.void_protection.y {"text":"-------------------","color": "white"}
scoreboard players display name $introduction.2 player.void_protection.y {"translate":"player.void_protection.y.introduction.1",fallback:"進入死亡區域或為虛空 (y: -125) 時:","color": "yellow"}
scoreboard players display name $introduction.3 player.void_protection.y {"translate":"player.void_protection.y.introduction.2",fallback:"創造 / 觀察者模式不受到虛空傷害","color": "yellow"}
scoreboard players display name $introduction.4 player.void_protection.y {"translate":"player.void_protection.y.introduction.2",fallback:"生存 / 冒險 / 特殊技能動畫將造成真實傷害","color": "yellow"}
scoreboard players display name $introduction.5 player.void_protection.y {"translate":"player.void_protection.y.introduction.2",fallback:"並回朔至原本陸地的位置","color": "yellow"}
scoreboard players display name $introduction.6 player.void_protection.y {"text":"-------------------","color": "white"}

scoreboard players display name $introduction.1 player.void_protection.z {"text":"-------------------","color": "white"}
scoreboard players display name $introduction.2 player.void_protection.z {"translate":"player.void_protection.z.introduction.1",fallback:"進入死亡區域或為虛空 (y: -125) 時:","color": "yellow"}
scoreboard players display name $introduction.3 player.void_protection.z {"translate":"player.void_protection.z.introduction.2",fallback:"創造 / 觀察者模式不受到虛空傷害","color": "yellow"}
scoreboard players display name $introduction.4 player.void_protection.z {"translate":"player.void_protection.z.introduction.2",fallback:"生存 / 冒險 / 特殊技能動畫將造成真實傷害","color": "yellow"}
scoreboard players display name $introduction.5 player.void_protection.z {"translate":"player.void_protection.z.introduction.2",fallback:"並回朔至原本陸地的位置","color": "yellow"}
scoreboard players display name $introduction.6 player.void_protection.z {"text":"-------------------","color": "white"}