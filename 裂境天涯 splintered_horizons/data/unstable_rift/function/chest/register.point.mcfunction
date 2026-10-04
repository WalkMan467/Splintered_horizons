# ===================================================
# 裂境 寶箱 建立紀錄點 / create the chest marker

    ## Guide [ function unstable_rift:chest/register.point ] >>> 裂境 寶箱 建立紀錄點 / create the chest marker
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest

# ===================================================

# 執行位置是寶箱那一格的正中心，marker 生在中心，
# 後面 at @s 的方塊判定才會剛好對準同一格
#
# marker 只存隱藏分，不存方塊資料 —— 這套不重建箱子方塊，只清空內容


summon marker ~ ~ ~ {Tags:["unstable_rift.chest.point","unstable_rift.chest.new"]}

# 同一格的舊紀錄點清掉，重複註冊不會留下兩個 marker
# 重放箱子就是重新開始，分數歸零是刻意的

kill @e[tag=unstable_rift.chest.point,tag=!unstable_rift.chest.new,distance=..0.5,sort=arbitrary,type=marker]

scoreboard players set @e[tag=unstable_rift.chest.new,distance=..0.5,sort=arbitrary,type=marker] unstable_rift.chest.score 0

tag @e[tag=unstable_rift.chest.new,distance=..0.5,sort=arbitrary,type=marker] remove unstable_rift.chest.new
