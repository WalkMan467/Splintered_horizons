# ===================================================
# Sys Dummy Mob Introduction Function
## Guide [ function sys:skills_freeze/introduction ] >>> 初始化凍結技能記分板和介紹顯示
## Guide [ function sys:skills_freeze/timer ] >>> 管理凍結技能計時器倒數

# ===================================================
# 格式: 新增的 objectives 記分板要添加簡介 \
    1. 每句用一個虛擬玩家分數作為換行 \
    2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \
    3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色

# ====================================================================================================
scoreboard objectives add sys.skills_freeze dummy "技能凍結"
scoreboard objectives add sys.skills_freeze.id dummy "技能凍結 ID"

scoreboard players set $introduction.1 sys.skills_freeze 2147483647
scoreboard players set $introduction.2 sys.skills_freeze 2147483646
scoreboard players set $introduction.3 sys.skills_freeze 2147483645
scoreboard players set $introduction.4 sys.skills_freeze 2147483644
scoreboard players set $introduction.5 sys.skills_freeze 2147483643

scoreboard players display numberformat $introduction.1 sys.skills_freeze fixed ""
scoreboard players display numberformat $introduction.2 sys.skills_freeze fixed ""
scoreboard players display numberformat $introduction.3 sys.skills_freeze fixed ""
scoreboard players display numberformat $introduction.4 sys.skills_freeze fixed ""
scoreboard players display numberformat $introduction.5 sys.skills_freeze fixed ""

scoreboard players display name $introduction.1 sys.skills_freeze {"text":"--------------------------","color": "white"}
scoreboard players display name $introduction.2 sys.skills_freeze {"translate":"sys.skills_freeze.introduction.1",fallback:"支援 玩家、怪物、BOSS","color": "yellow"}
scoreboard players display name $introduction.3 sys.skills_freeze {"translate":"sys.skills_freeze.introduction.2",fallback:"可使怪物與玩家","color": "yellow"}
scoreboard players display name $introduction.4 sys.skills_freeze {"translate":"sys.skills_freeze.introduction.2",fallback:"無法用技能、攻擊、移動與跳躍等行為","color": "yellow"}
scoreboard players display name $introduction.5 sys.skills_freeze {"text":"--------------------------","color": "white"}