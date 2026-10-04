# ===================================================
# 劍 夜幕 被動 傷害 階段 1 / sword nightfall passive damage step 1

    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/1 ] >>> 劍 夜幕 被動 傷害 階段 1 / sword nightfall passive damage step 1
    ## Guide [ function weapons:type/sword/nightfall/passive/use ] >>> 劍 夜幕 被動 觸發 / sword nightfall passive activate

# ===================================================


# player

tag @s add weapon.nightfall.charger
scoreboard players reset @s weapon.nightfall.charge_timer

# 加速 25% (00:01)
#
# 原版 speed 只有 20% / 40% 兩個檔位，做不出剛好 25%，
# 所以走 CSE 的 add_multiplied_base，跟整包其他移速加成同一套

function cse:sys/status_effects/use {attribute:"movement_speed", duration:20, base:0.25, value:0.0, max:0.25, id:"weapon.nightfall", type:"add_multiplied_base"}

# particle
playsound block.beacon.activate master @a ~ ~ ~ 1 2
