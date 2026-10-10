# ===================================================
# 裂境 寶箱 視線找到了 / the chest was found

    ## Guide [ function unstable_rift:chest/ray/hit ] >>> 裂境 寶箱 視線找到了 / the chest was found
    ## Guide [ function unstable_rift:chest/ray/step ] >>> 裂境 寶箱 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行位置在箱子那一格裡面，但不一定是正中心，所以兩條分支都先 align xyz


## ----- mode 1：放置 ----- ##

# 單箱一律註冊，不管附近有沒有生怪磚
#
# 「這是不是裂境寶箱」的判定搬到開箱結算那一刻去了（見 chest/open/settle），
# 這樣放箱子跟放生怪磚的先後順序就不影響結果 —— 先擺哪個都行
#
# 代價是以後每放一個單箱都會多一個 marker。marker 不被 tick、也不傳給客戶端，
# 單顆成本很低；真的不想要某個箱子被追蹤就在那一格跑 unstable_rift:chest/remove

execute \
    if score #unstable_rift.chest.ray.mode global.main matches 1 \
    align xyz positioned ~0.5 ~0.5 ~0.5 run \
function unstable_rift:chest/register


## ----- mode 2：開箱 ----- ##

# 有註冊過而且還沒結算過才給戰利品，重複開同一個箱子不會再出一輪

execute \
    if score #unstable_rift.chest.ray.mode global.main matches 2 \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    as @n[tag=unstable_rift.chest.point,tag=!unstable_rift.chest.opened,distance=..0.5,sort=arbitrary,type=marker] at @s run \
function unstable_rift:chest/open/settle
