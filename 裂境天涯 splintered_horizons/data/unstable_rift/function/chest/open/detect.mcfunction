# ===================================================
# 裂境 寶箱 開箱偵測 / rift chest open detection

    ## Guide [ function unstable_rift:chest/open/detect ] >>> 裂境 寶箱 開箱偵測 / rift chest open detection
    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:chest/opened 觸發
#
# default_block_use 是「對方塊做它的預設互動」—— 開箱子就是這個。
# 26.3 的 conditions 跟 placed_block 一樣只有 player 與 location
#
# 戰利品是這一刻才放進去的，GUI 已經開著的話玩家會看到物品長出來，
# 剛好就是結算的演出


advancement revoke @s only unstable_rift:chest/opened

## ----- 認出侵蝕階段 ----- ##

# 戰利品表是按階段分的（chest/<stage>/t<tier>），而階段是區域的分數，
# 寶箱的 marker 自己不知道它屬於哪一區。開箱的玩家身上有區域標籤，
# 所以從玩家這邊認最準
#
# 預設 0（穩定）：在裂隙外面開箱子、或是標籤還沒掛上，都走最低階那組
# 加一區就多兩行

scoreboard players set #unstable_rift.chest.stage global.main 0

execute \
    if entity @s[tag=unstable_rift.chapter_1.1] run \
scoreboard players operation #unstable_rift.chest.stage global.main = #unstable_rift.chapter_1.1.erosion.stage global.main


## ----- 找出是哪一個箱子 ----- ##

scoreboard players set #unstable_rift.chest.open.hit global.main 0
scoreboard players set #unstable_rift.chest.ray.mode global.main 2

function unstable_rift:chest/ray/use

# 射線沒中就退回「最近一個還沒結算的裂境寶箱」
#
# 箱子的模型比一整格小（寬高都是 14/16，四周各內縮 1/16），從斜角看過去時
# 射線在那一格裡走的距離可能不到一個步長，就這樣穿過去了。
# 但開箱這件事本身就保證玩家正對著它，所以「最近那一個」幾乎不會選錯
#
# 放置那條線不需要這種退路 —— 它有 11x11x11 的掃描當保險

execute \
    if score #unstable_rift.chest.open.hit global.main matches 0 \
    as @n[tag=unstable_rift.chest.point,tag=!unstable_rift.chest.opened,distance=..5,sort=nearest,type=marker] at @s run \
function unstable_rift:chest/open/settle
