# ===================================================
# 裂境 寶箱 建立紀錄點 / create the chest marker

    ## Guide [ function unstable_rift:chest/register.point ] >>> 裂境 寶箱 建立紀錄點 / create the chest marker
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/remove ] >>> 裂境 寶箱 解除註冊 / unregister the rift chest

# ===================================================

# 執行位置是寶箱那一格的正中心，marker 生在中心，
# 後面 at @s 的方塊判定才會剛好對準同一格
#
# marker 只存隱藏分，不存方塊資料 —— 這套不重建箱子方塊，只清空內容


# 那一格已經有紀錄點就甚麼都不做，分數與已開標記原樣保留
#
# 視線射線有可能停在鄰居那個箱子上（它會收在第一個碰到的箱子），
# 要是這裡照舊殺掉重建，那顆鄰居辛苦累積的分數就被洗掉了。
# 擋在這裡之後，抓錯鄰居最多是「新箱子沒註冊到」，不會破壞既有的
#
# 代價：拆掉重放同一格不會重新開始。要歸零就先跑 unstable_rift:chest/remove

execute \
    if entity @e[tag=unstable_rift.chest.point,distance=..0.5,limit=1,sort=arbitrary,type=marker] run \
return 0

summon marker ~ ~ ~ {Tags:["unstable_rift.chest.point","unstable_rift.chest.new"]}

scoreboard players set @e[tag=unstable_rift.chest.new,distance=..0.5,sort=arbitrary,type=marker] unstable_rift.chest.score 0

tag @e[tag=unstable_rift.chest.new,distance=..0.5,sort=arbitrary,type=marker] remove unstable_rift.chest.new
