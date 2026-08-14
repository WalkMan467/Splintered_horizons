# ===================================================
# 碎岩大劍 右鍵 效果 特效 / sword rock crushing greatsword right click effect visuals

    ## Guide [ function weapons:type/sword/rock_crushing_greatsword/rc/effect/fx ] >>> 碎岩大劍 右鍵 效果 特效 / sword rock crushing greatsword right click effect visuals
    ## Guide [ function weapons:type/sword/rock_crushing_greatsword/rc/effect/use ] >>> 碎岩大劍 右鍵 效果 觸發 / sword rock crushing greatsword right click effect activate

# ===================================================

scoreboard players add #weapon.rock_crushing_greatsword.fx particle 3

particle dust_color_transition{from_color:[1.000,0.937,0.039],to_color:[1.000,0.733,0.000],scale:1} ^ ^ ^3 0 0 0 0 0 force @a


execute rotated ~3 0 \
    if score #weapon.rock_crushing_greatsword.fx particle matches ..360 run \
function weapons:type/sword/rock_crushing_greatsword/rc/effect/fx