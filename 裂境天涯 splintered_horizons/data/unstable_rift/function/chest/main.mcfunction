# ===================================================
# 裂境 寶箱 主程式 / rift chest main

    ## Guide [ function unstable_rift:chest/main ] >>> 裂境 寶箱 主程式 / rift chest main
    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈 / rift main loop
    ## Guide [ function unstable_rift:chest/debug/loop ] >>> 裂境 寶箱 debug 顯示 / rift chest debug display

# ===================================================

# 執行者是玩家（unstable_rift:main/loop 以 as @a at @s 帶進來）
#
# 目前只有建圖用的 debug 顯示。不吃難度閘 —— 這條跟生怪、傷害都無關，
# 和平模式下照樣要看得到箱子的狀態


# 生存玩家不該看到隱藏分，整支就這裡擋掉
#
# 旁觀模式也一起擋：旁觀不是 creative，條件天生就不成立

execute \
    unless entity @s[gamemode=creative] run \
return 0

# 侵蝕階段跟 chest/open/detect 走同一個來源：玩家身上的區域標籤
#
# 顯示出來的戰利品表路徑要跟真的開箱那一刻算出來的一樣，所以不能從寶箱那邊猜 ——
# 紀錄點自己不知道它屬於哪一區
#
# 預設 0（穩定）：在裂隙外面看自己家的箱子就走最低階那組。加一區就多兩行

scoreboard players set #unstable_rift.chest.debug.stage global.main 0

execute \
    if entity @s[tag=unstable_rift.chapter_1.1] run \
scoreboard players operation #unstable_rift.chest.debug.stage global.main = #unstable_rift.chapter_1.1.erosion.stage global.main

# 只掃這個玩家 8 格內的紀錄點 —— 判定本來就是「有創造模式的玩家靠近 8 格內」，
# 而每個玩家都會跑一遍這支，所以從靠近的那個人身上往外抓就等於那個條件
#
# 走開之後沒人再刷新文字牌，它的 duration 會自己扣到 -1 被 main:duration/main 收掉，
# 所以這裡不用再拿一個大半徑去追「誰該被清掉」

execute \
    as @e[tag=unstable_rift.chest.point,distance=..8,limit=20,sort=arbitrary,type=marker] at @s run \
function unstable_rift:chest/debug/loop
