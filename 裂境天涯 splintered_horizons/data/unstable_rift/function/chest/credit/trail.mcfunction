# ===================================================
# 裂境 寶箱 連結線 / draw the trail to the chest

    ## Guide [ function unstable_rift:chest/credit/trail ] >>> 裂境 寶箱 連結線 / draw the trail to the chest
    ## Guide [ function unstable_rift:chest/credit/apply ] >>> 裂境 寶箱 加分與連結線 / credit the kill and draw the link

# ===================================================

# 執行位置是怪死掉的那一格，target 由 chest/credit/apply 從寶箱紀錄點的 Pos 帶進來
#
# minecraft:trail 的三個欄位都是必填（查過 TrailParticleOption 的常數池）：
#   target   絕對座標，粒子會飄過去
#   color    壓成一個 int 的 RGB
#   duration 飄完的 tick 數
#
# duration 30：加分半徑是 16 格，1.5 秒剛好夠從最遠的屍體飄到箱子，
# 又不會慢到讓人以為是別的東西。原版吱嘎核心那邊是隨機 10~49
#
# ~1 是抬到大概身體的高度 —— 怪的座標在腳底，從腳底冒出來看起來像在地上爬
#
# force @a：所有人都看得到，這條線是正式演出不是 debug


$particle minecraft:trail{target:$(target),color:$(color),duration:30} ~ ~1 ~ 0.2 0.3 0.2 0 14 force @a
