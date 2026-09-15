# 執行者 : 被右鍵的滑索台 interaction
#
# data remove entity @s interaction 一定要放在所有 on target 之後。
# on target 就是靠 interaction 這個 NBT 欄位反查出玩家的，先刪掉的話
# 後面每一個 on target 都會解析不到，右鍵就完全沒反應。

scoreboard players operation #clicked sys.zipline_platform.link = @s sys.zipline_platform.id

# 連線模式中的右鍵是「建立連線」，不觸發滑索
scoreboard players set #edit sys.zipline_platform.link 0

execute \
    on target \
    if entity @s[tag=sys.zipline_platform.editing] run \
scoreboard players set #edit sys.zipline_platform.link 1

execute \
    if score #edit sys.zipline_platform.link matches 1 \
    on target run \
function sys:zipline_platform/link/create

# 提早結束也要把 interaction 清掉，不然下一 tick 會再觸發一次
execute \
    if score #edit sys.zipline_platform.link matches 1 \
    run return run \
data remove entity @s interaction

# 出發塔的 id，interacted/candidates 要用它篩出「有連到這裡」的目標
scoreboard players operation #from sys.zipline_platform.link = @s sys.zipline_platform.id

# 從頭開始的一趟：沒有上一段，接續次數歸零
scoreboard players set #prev sys.zipline_platform.link -1
scoreboard players set #chain.count sys.zipline_platform.link 0

tag @s add sys.zipline_platform.using

execute \
    on target at @s run \
function sys:zipline_platform/interacted/player

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 normal @s

data remove entity @s interaction

tag @s remove sys.zipline_platform.using
