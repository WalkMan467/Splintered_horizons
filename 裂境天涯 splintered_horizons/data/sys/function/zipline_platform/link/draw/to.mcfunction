# 執行位置 : 線的起點（$(a) 那座塔的盔甲座）
#
# 找出所有清單裡有 $(a) 的塔。marker 騎在盔甲座上，on vehicle 一步就
# 從「連線資料」回到「幾何端點」。
#
# 不必去管同一條邊會不會從兩端各畫一次 —— 粒子疊在同一條線上看不出差別，
# 反而是硬要只從其中一端畫的話，另一端剛好在範圍外時整條線就消失了。

$execute \
    as @e[tag=sys.zipline_platform.link,distance=..70,type=marker] \
    unless score @s sys.zipline_platform.id matches $(a) \
    if data entity @s data.links[{id:$(a)}] \
    on vehicle run \
function sys:zipline_platform/link/draw/edge
