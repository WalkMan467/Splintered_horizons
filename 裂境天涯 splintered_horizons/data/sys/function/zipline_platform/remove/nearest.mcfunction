# 刪除滑索台
#     function sys:zipline_platform/remove/nearest
#
# 站到要拆的那座旁邊再跑，拆掉 8 格內最近的一座
#
# 跟放置的方式對稱（放置是站在要放的位置跑 sys:zipline_platform/spawn），
# 沒有另外綁按鍵是因為左鍵右鍵都已經給連線編輯和滑索用掉了

execute \
    unless entity @n[tag=sys.zipline_platform.act,distance=..8,type=interaction] run \
    return run \
tellraw @s [{"translate":"tips.zipline_platform.prefix","color":"gold"},{"translate":"tips.zipline_platform.remove.failure.1","color":"red"}]

execute \
    as @n[tag=sys.zipline_platform.act,distance=..8,type=interaction] at @s run \
function sys:zipline_platform/remove/one
