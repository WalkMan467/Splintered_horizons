# ===================================================
# 擊殺 精英怪物 / elite kill

    ## Guide [ function unstable_rift:main/erosion/kill/any ] >>> 擊殺 普通怪物 / normal kill
    ## Guide [ function unstable_rift:main/erosion/kill/elite ] >>> 擊殺 精英怪物 / elite kill
    ## Guide [ function unstable_rift:main/erosion/kill/boss ] >>> 擊殺 BOSS / boss kill
    ## Guide [ function unstable_rift:chapter_1/erosion_kill ] >>> 第一章的擊殺扣除 / chapter 1 kill deduction

# ===================================================

# 執行者 : 擊殺的玩家（由 advancement unstable_rift:erosion/kill/elite 觸發）
#
# 這支是「額外」扣除：any 已經先扣過 20，所以這裡只補差額，
# 加起來才是合計 −100。三個進度誰先誰後都不影響結果。

advancement revoke @s only unstable_rift:erosion/kill/elite

scoreboard players set #unstable_rift.erosion.kill global.main 80

function unstable_rift:chapter_1/erosion_kill
