# ===================================================
# 鐮 終焉之墟 效果 結束 / scythe ruins of the finality effect finish

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/end ] >>> 鐮 終焉之墟 效果 結束 / scythe ruins of the finality effect finish
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use ] >>> 鐮 終焉之墟 右鍵 動畫 階段 2 觸發 / scythe ruins of the finality right click animation step 2 activate
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/main ] >>> 鐮 終焉之墟 主迴圈 / scythe ruins of the finality loop

# ===================================================

tag @a remove weapon.ruins_of_the_finality.screen

tp @a[tag=weapon.ruins_of_the_finality.animation.player] ~ ~ ~ ~ 0

execute \
    as @a[tag=weapon.ruins_of_the_finality.animation.player] at @s run \
function weapons:type/scythe/ruins_of_the_finality/rc/animation/2/use

function aj:stellar/remove/this