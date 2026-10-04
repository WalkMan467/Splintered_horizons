# ===================================================
# 裂隙主迴圈 / rift main loop

    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈 / rift main loop
    ## Guide [ function unstable_rift:chapter_1/loop ] >>> 第一章的裂隙 / chapter 1 rifts

# ===================================================

<<<<<<< HEAD
# 執行者 : 玩家（main:guide/player 以 as @a at @s 呼叫）

# temp 標記這一 tick 要參與偵測的人
# 旁觀者排除掉，但正在看過場動畫的要留著；正在被隱藏區域名稱的人也排除

tag @a add temp
tag @a[gamemode=spectator,tag=!animation] remove temp
tag @a[tag=sys.hide_world_area.name] remove temp

function unstable_rift:chapter_1/loop

tag @a remove temp
=======
function unstable_rift:chapter_1/loop

# 裂境專屬生怪磚（召喚 + 被破壞後重建）
function unstable_rift:spawner/main
>>>>>>> 9c1554433f22cbf1d19278b716610d8df61bf89d
