# ===================================================
# 裂境 生怪磚 主程式 / unstable rift spawner main

    ## Guide [ function unstable_rift:spawner/main ] >>> 裂境 生怪磚 主程式 / unstable rift spawner main
    ## Guide [ function unstable_rift:main/loop ] >>> 裂境 排程入口 / unstable rift dispatch entry
    ## Guide [ function unstable_rift:spawner/setup/use ] >>> 裂境 生怪磚 召喚處理 / unstable rift spawner summon handler
    ## Guide [ function unstable_rift:spawner/respawn/loop ] >>> 裂境 生怪磚 重建迴圈 / unstable rift spawner respawn loop

# ===================================================

# 執行者是玩家（由 unstable_rift:main/loop 以 as @a at @s 帶進來）
# 所有判定都是以玩家為中心抓附近的實體，離玩家很遠的裂境生怪磚不會花效能


## ----- 召喚：銀魚落地後換成真正的怪物 ----- ##

# 和平模式沒怪可生，這半邊跳過

execute \
    unless score #difficulty global.main matches 0 \
    as @e[tag=unstable_rift.spawner.mob,distance=..30,limit=10,sort=arbitrary,type=silverfish] at @s run \
function unstable_rift:spawner/setup/use


## ----- 重建：被破壞的生怪磚由重建點 marker 計時放回來 ----- ##

# 這半邊不吃難度
#
# 原本整支開頭就 if #difficulty matches 0 run return 0，連重建一起擋掉了 ——
# 在和平模式待一陣子，所有存檔都會停在進和平的那一刻，
# 而且那段時間被打掉的生怪磚永遠等不到重建。方塊該回來就該回來，跟難度無關

execute \
    as @e[tag=unstable_rift.spawner.point,distance=..80,limit=20,sort=arbitrary,type=marker] at @s run \
function unstable_rift:spawner/respawn/loop
