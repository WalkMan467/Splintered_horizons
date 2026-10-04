# ===================================================
# 擊殺 普通怪物 / any kill

    ## Guide [ function unstable_rift:main/erosion/kill/any ] >>> 擊殺 普通怪物 / normal kill
    ## Guide [ function unstable_rift:main/erosion/kill/elite ] >>> 擊殺 精英怪物 / elite kill
    ## Guide [ function unstable_rift:main/erosion/kill/boss ] >>> 擊殺 BOSS / boss kill
    ## Guide [ function unstable_rift:chapter_1/erosion_kill ] >>> 第一章的擊殺扣除 / chapter 1 kill deduction

# ===================================================

# 執行者 : 擊殺的玩家（由 advancement unstable_rift:erosion/kill/any 觸發）

advancement revoke @s only unstable_rift:erosion/kill/any

scoreboard players set #unstable_rift.erosion.kill global.main 20

function unstable_rift:chapter_1/erosion_kill
