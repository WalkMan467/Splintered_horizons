# ===================================================
# 劍 夜幕 被動 觸發 / sword nightfall passive activate

    ## Guide [ function weapons:type/sword/nightfall/passive/use ] >>> 劍 夜幕 被動 觸發 / sword nightfall passive activate
    ## Guide [ function weapons:type/sword/nightfall/passive/title ] >>> 劍 夜幕 被動 title / sword nightfall passive title
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/1 ] >>> 劍 夜幕 被動 傷害 階段 1 / sword nightfall passive damage step 1

# ===================================================

# charge

execute \
    if score @s weapon.nightfall.charge matches 5.. \
    if score @s weapon.nightfall.charge_timer matches ..20 run \
return 0

execute \
    if score #is_nightfall.passive? global.main matches 1.. run \
return 0

execute \
    if score @s weapon.nightfall.effect.switch_dmg_count matches 1.. run \
return 0

scoreboard players add @s weapon.nightfall.charge 1
function weapons:type/sword/nightfall/passive/title

# release

execute \
    if score @s weapon.nightfall.charge matches 5.. run \
function weapons:type/sword/nightfall/passive/dmg/1