# ===================================================
# 右鍵 失敗 停用 / right click failure disabled

    ## Guide [ function weapons:rc/failure/disabled ] >>> 右鍵 失敗 停用 / right click failure disabled
    ## Guide [ function armors:detect/active_skills ] >>> 偵測 active skills / detect active skills
    ## Guide [ function weapons:rc/1 ] >>> 右鍵 階段 1 / right click step 1

# ===================================================

title @s title ""
title @s subtitle {"translate":"weapon.failure.disabled","fallback":"技能被暫時禁用","color":"red","bold":true}
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20