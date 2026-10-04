# ===================================================
# 劍 天地乖離開闢之星 主迴圈 / kill sword loop

    ## Guide [ function weapons:type/sword/kill_sword/main ] >>> 劍 天地乖離開闢之星 主迴圈 / kill sword loop
    ## Guide [ function weapons:type/sword/kill_sword/rc/reset ] >>> 劍 天地乖離開闢之星 右鍵 重置 / kill sword right click reset
    ## Guide [ function weapons:type/sword/kill_sword/rc/use ] >>> 劍 天地乖離開闢之星 右鍵 觸發 / kill sword right click activate

# ===================================================


execute \
    unless score #kill_sword_shoot.timer global.main matches 1.. run \
function weapons:type/sword/kill_sword/rc/reset


execute \
    if score #kill_sword_shoot.timer global.main matches 1.. run \
schedule function weapons:type/sword/kill_sword/main 1t