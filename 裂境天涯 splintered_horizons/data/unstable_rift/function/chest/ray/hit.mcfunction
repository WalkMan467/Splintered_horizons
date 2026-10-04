# ===================================================
# 裂境 寶箱 視線找到了 / the chest was found

    ## Guide [ function unstable_rift:chest/ray/hit ] >>> 裂境 寶箱 視線找到了 / the chest was found
    ## Guide [ function unstable_rift:chest/ray/step ] >>> 裂境 寶箱 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行位置在箱子那一格裡面，但不一定是正中心，所以兩條分支都先 align xyz


## ----- mode 1：放置 ----- ##

# 8 格內有生怪磚重建點才註冊，這就是「裂境寶箱」的判定條件
#
# 附近沒生怪磚的箱子永遠等不到刷新，註冊它沒意義。
# 反過來說蓋在生怪磚旁邊的裝飾箱子會被收進來，
# 不想要的話在那一格跑 unstable_rift:chest/remove

execute \
    if score #unstable_rift.chest.ray.mode global.main matches 1 \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    if entity @e[tag=unstable_rift.spawner.point,distance=..8,limit=1,sort=arbitrary,type=marker] run \
function unstable_rift:chest/register


## ----- mode 2：開箱 ----- ##

# 有註冊過而且還沒結算過才給戰利品，重複開同一個箱子不會再出一輪

execute \
    if score #unstable_rift.chest.ray.mode global.main matches 2 \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    as @n[tag=unstable_rift.chest.point,tag=!unstable_rift.chest.opened,distance=..0.5,sort=arbitrary,type=marker] at @s run \
function unstable_rift:chest/open/settle
