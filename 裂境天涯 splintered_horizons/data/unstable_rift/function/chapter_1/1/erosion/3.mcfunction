# ===================================================
# 破碎之城 侵蝕度 崩解 階段 / broken city erosion stage collapsing

    ## Guide [ function unstable_rift:chapter_1/1/erosion/stage ] >>> 破碎之城 階段效果 / broken city stage effects
    ## Guide [ function unstable_rift:main/erosion/change ] >>> 跨階段 / cross a stage threshold

# ===================================================

# 執行者 : 無
#
# 設計稿這一階要做的事：
#   空間    撤離點剩 1 個
#   時間    倒數 2 倍速
#   戰利品  最高品質
#
# 還沒接的東西（這些系統目前都不存在，接好之後填在下面）：
#   撤離點   開關 撤離點剩 1 個
#   怪物強度 跟著階段提升，取代原本「隨時間變強」
#   戰利品   箱子品質 最高品質
#
# 倒數速度不用寫在這裡 —— main/timer/use 每 tick 讀
# #unstable_rift.<area>.erosion.stage 自己加速，這支只管空間

# （待實作）

tellraw @a[tag=unstable_rift.chapter_1.1] [{"text":"[","color":"white"},{"text":"※","color":"#b96cff"},{"text":"] ","color":"white"},{"translate":"unstable_rift.erosion.enter","fallback":"空間進入 %s","color":"white","with":[{"translate":"unstable_rift.erosion.stage.3","fallback":"崩解","color":"#b96cff","bold":true,"underlined":true}]}]
