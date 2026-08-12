# ===================================================

# introduction


    ## Guide [ function dmg_formula:scoreboard ] >>> scoreboard and introduction


# ===================================================



# 格式: 新增的 objectives 記分板要添加簡介 \

    # 1. 每句用一個虛擬玩家分數作為換行 \

    # 2. 在新增換行用虛擬玩家分數時必須遵循 `$introduction.<簡介目前行數>` 作為區分，且字體顏色統一用黃色 \

    # 3. 最後一行與最上面簡介第一行必須要是以 "-------------------" 作為隔開，且字體顏色統一用白色



# ====================================================================================================

scoreboard objectives add dmg_formula.atk_percentage dummy "獲取玩家"

# Percentage rate fine-tuning
scoreboard players set %math dmg_formula.atk_percentage 100



scoreboard players set $introduction.1 dmg_formula.atk_percentage 2147483647

scoreboard players set $introduction.2 dmg_formula.atk_percentage 2147483646

scoreboard players set $introduction.3 dmg_formula.atk_percentage 2147483645

scoreboard players set $introduction.4 dmg_formula.atk_percentage 2147483644

scoreboard players set $introduction.5 dmg_formula.atk_percentage 2147483643

scoreboard players set $introduction.6 dmg_formula.atk_percentage 2147483642


scoreboard players display numberformat $introduction.1 dmg_formula.atk_percentage fixed ""

scoreboard players display numberformat $introduction.2 dmg_formula.atk_percentage fixed ""

scoreboard players display numberformat $introduction.3 dmg_formula.atk_percentage fixed ""

scoreboard players display numberformat $introduction.4 dmg_formula.atk_percentage fixed ""

scoreboard players display numberformat $introduction.5 dmg_formula.atk_percentage fixed ""

scoreboard players display numberformat $introduction.6 dmg_formula.atk_percentage fixed ""


scoreboard players display name $introduction.1 dmg_formula.atk_percentage {"text":"--------------------------","color": "white"}

scoreboard players display name $introduction.2 dmg_formula.atk_percentage {"translate":"dmg_formula.atk_percentage.introduction.1",fallback:"支援 玩家","color": "yellow"}

scoreboard players display name $introduction.3 dmg_formula.atk_percentage {"translate":"dmg_formula.atk_percentage.introduction.2",fallback:"控制玩家造成技能傷害的倍率","color": "yellow"}

scoreboard players display name $introduction.4 dmg_formula.atk_percentage {"translate":"dmg_formula.atk_percentage.introduction.2",fallback:"使用時請給玩家 atker 與對象 dmger","color": "yellow"}

scoreboard players display name $introduction.5 dmg_formula.atk_percentage {"translate":"dmg_formula.atk_percentage.introduction.2",fallback:"最後針對玩家執行 \"dmg_formula:weapons/type/<type>/<weapon>/calculate\" 即可","color": "yellow"}

scoreboard players display name $introduction.6 dmg_formula.atk_percentage {"text":"--------------------------","color": "white"}