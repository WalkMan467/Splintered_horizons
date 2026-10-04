# ===================================================
# 裂境 寶箱 註冊 / register the rift chest

    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/register.point ] >>> 裂境 寶箱 建立紀錄點 / create the chest marker
    ## Guide [ function unstable_rift:chest/remove ] >>> 裂境 寶箱 解除註冊 / unregister the rift chest

# ===================================================

# 在寶箱那一格執行。手放的由 unstable_rift:chest/detect 自動叫進來，
# 用指令建圖就跑 unstable_rift:chest/place，或自己 execute positioned 跑這支
#
# 只收單箱（type=single）
#
# 雙箱的兩半是兩個獨立的方塊實體，各有 27 格、各自存自己的 Items，
# 收進來會變成「一個寶箱出兩份戰利品」。擋在這裡，auto / place / 手動三條路都吃得到
#
# 已經註冊好的單箱旁邊再放一個箱子會讓它變成雙箱，紀錄點不會自動消失 ——
# 那種情況戰利品只會進有紀錄點的那一半。不想要就在那一格跑 chest/remove


execute \
    unless block ~ ~ ~ minecraft:chest[type=single] run \
return 0

execute align xyz positioned ~0.5 ~0.5 ~0.5 run \
function unstable_rift:chest/register.point

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:chest/register
