# ===================================================
# 裂隙主迴圈 / rift main loop

    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈 / rift main loop
    ## Guide [ function unstable_rift:chapter_1/loop ] >>> 第一章的裂隙 / chapter 1 rifts
    ## Guide [ function unstable_rift:spawner/main ] >>> 裂境 生怪磚 主程式 / unstable rift spawner main
    ## Guide [ function unstable_rift:chest/main ] >>> 裂境 寶箱 主程式 / rift chest main

# ===================================================

# 執行者 : 玩家（main:guide/player 以 as @a at @s 呼叫）

# temp 標記這一 tick 要參與偵測的人
# 旁觀者排除掉，但正在看過場動畫的要留著；正在被隱藏區域名稱的人也排除

tag @a add temp
tag @a[gamemode=spectator,tag=!animation] remove temp
tag @a[tag=sys.hide_world_area.name] remove temp

function unstable_rift:chapter_1/loop

tag @a remove temp

# 裂境專屬生怪磚（召喚 + 被破壞後重建）
# 放在 temp 清掉之後 —— 這條跟區域偵測無關，不吃 temp

function unstable_rift:spawner/main

# 裂境專屬寶箱（目前只有建圖用的 debug 顯示）
# 跟生怪磚一樣不吃 temp

function unstable_rift:chest/main
