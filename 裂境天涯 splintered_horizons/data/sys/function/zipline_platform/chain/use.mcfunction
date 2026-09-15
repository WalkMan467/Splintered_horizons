# 執行者 : 上一 tick 抵達終點、按著 Ctrl 的玩家，執行位置在玩家身上
#
# 從抵達的這座塔再發一次滑索，方向照玩家當下的視線。
# interacted/player 找不到有連線的目標時把 #hit 留在 0，這裡就補跑一次
# 正常的脫離收尾，效果跟沒按 Ctrl 一樣。

tag @s remove sys.zipline_platform.chain.pending

# 保險絲：就算連線接成一個環，也不會無限滑下去
execute \
    if score #chain.count sys.zipline_platform.link matches 64.. run \
    return run \
function sys:zipline_platform/chain/fallback

scoreboard players add #chain.count sys.zipline_platform.link 1

execute \
    unless entity @n[tag=sys.zipline_platform.act,distance=..8,type=interaction] run \
    return run \
function sys:zipline_platform/chain/fallback

# 上一段的出發塔要排掉，不然在盡頭會被彈回去、來回不停
scoreboard players operation #prev sys.zipline_platform.link = #from sys.zipline_platform.link

tag @n[tag=sys.zipline_platform.act,distance=..8,type=interaction] add sys.zipline_platform.using

execute \
    as @n[tag=sys.zipline_platform.using,distance=..8,type=interaction] run \
scoreboard players operation #from sys.zipline_platform.link = @s sys.zipline_platform.id

function sys:zipline_platform/interacted/player

tag @e[tag=sys.zipline_platform.using,distance=..8,type=interaction] remove sys.zipline_platform.using

# 沒接上就照正常流程脫離
execute \
    if score #hit sys.zipline_platform.link matches 0 run \
function sys:zipline_platform/chain/fallback
