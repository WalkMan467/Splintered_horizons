# ===================================================
# 發武器 / hand the weapon over

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm/give ] >>> 發武器 / hand the weapon over

    ## $(get) 就是武器池裡那把的 weapons:get/... function，直接沿用原本的 give

# ===================================================

$function $(get)

$tellraw @a [{"text":"[","color":"white"},{"text":"⚔","color":"#b96cff"},{"text":"]","color":"white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"unstable_rift.chapter_1.1.weapon_select.confirm","fallback":"選擇了 %s 作為防身武器","color":"white","with":[{"translate":"$(name)","color":"$(color)","underlined":true,"bold":true}]}]

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.chapter_1.1.weapon_select.confirm" : "選擇了 %s 作為防身武器",
