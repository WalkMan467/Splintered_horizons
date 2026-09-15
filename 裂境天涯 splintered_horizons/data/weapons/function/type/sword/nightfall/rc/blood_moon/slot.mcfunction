# ===================================================
# 劍 夜幕 血月 單格 / sword nightfall blood moon single slot

    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/slot ] >>> 劍 夜幕 血月 單格 / sword nightfall blood moon single slot
    ## Guide [ function weapons:type/sword/nightfall/rc/blood_moon/scan ] >>> 劍 夜幕 血月 掃背包 / sword nightfall blood moon scan inventory

# ===================================================

# 執行者 : 玩家
# 參數 : slot  背包格子編號 0 ~ 35

$execute \
    if items entity @s container.$(slot) *[custom_data~{weapon:"nightfall",state:1b}] run \
item modify entity @s container.$(slot) weapons:type/sword/nightfall/0
