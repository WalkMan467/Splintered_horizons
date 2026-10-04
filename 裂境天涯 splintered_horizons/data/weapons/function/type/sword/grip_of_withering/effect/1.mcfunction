# ===================================================
# 劍 凋零之握 效果 階段 1 / sword grip of withering effect step 1

    ## Guide [ function weapons:type/sword/grip_of_withering/effect/1 ] >>> 劍 凋零之握 效果 階段 1 / sword grip of withering effect step 1
    ## Guide [ function weapons:type/sword/grip_of_withering/effect/use ] >>> 劍 凋零之握 效果 觸發 / sword grip of withering effect activate

# ===================================================

scoreboard players set @s weapon.grip_of_withering.passive.chance 15

function particle:type/expansion/grip_of_withering/passive/use
function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:160}