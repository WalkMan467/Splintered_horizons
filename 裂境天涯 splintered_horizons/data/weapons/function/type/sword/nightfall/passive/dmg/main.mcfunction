# ===================================================
# 劍 夜幕 被動 傷害 主迴圈 / sword nightfall passive damage loop

    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/main ] >>> 劍 夜幕 被動 傷害 主迴圈 / sword nightfall passive damage loop
    ## Guide [ function weapons:type/sword/nightfall/passive/range_particle ] >>> 劍 夜幕 被動 range particle / sword nightfall passive range particle
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/2 ] >>> 劍 夜幕 被動 傷害 階段 2 / sword nightfall passive damage step 2
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

scoreboard players add @s weapon.nightfall.charge_timer 1

# particle
scoreboard players set #temp global.main 0

execute rotated ~ 0 \
    positioned ~ ~1 ~ run \
function weapons:type/sword/nightfall/passive/range_particle

# release

execute \
    if score @s weapon.nightfall.charge_timer matches 10.. run \
scoreboard players set @s player.actionbar.weapon.nightfall 20


execute \
    if score @s weapon.nightfall.charge_timer matches 20.. rotated ~ 0 run \
function weapons:type/sword/nightfall/passive/dmg/2