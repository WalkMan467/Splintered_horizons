# ===================================================
# 劍 夜幕 被動 range particle / sword nightfall passive range particle

    ## Guide [ function weapons:type/sword/nightfall/passive/range_particle ] >>> 劍 夜幕 被動 range particle / sword nightfall passive range particle
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/main ] >>> 劍 夜幕 被動 傷害 主迴圈 / sword nightfall passive damage loop

# ===================================================


scoreboard players add #temp global.main 3

particle dust{color:[0.431,0.071,0.38],scale:0.7} ^ ^ ^4.5 0 0 0 0 0 force
particle dust{color:[0.431,0.071,0.38],scale:0.7} ^ ^ ^2.5 0 0 0 0 0 force


execute \
    if score #temp global.main matches ..360 rotated ~3 ~ run \
function weapons:type/sword/nightfall/passive/range_particle