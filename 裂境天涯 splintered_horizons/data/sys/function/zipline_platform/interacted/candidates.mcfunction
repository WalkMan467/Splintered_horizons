# 執行者 : 玩家，執行位置在玩家身上
# $(from) = 出發的那座塔的 id
#
# 只有清單裡有 $(from) 的塔才進候選 —— 沒綁線就滑不過去，這是整套新系統
# 的核心規則連線是雙向的，所以只查一邊就夠
#
# marker 騎在盔甲座上、盔甲座騎在 interaction 上，兩次 on vehicle 就從
# 「連線資料」回到 interacted/aim 需要的 interaction 本體

$execute \
    as @e[tag=sys.zipline_platform.link,distance=..60,type=marker] \
    unless score @s sys.zipline_platform.id matches $(from) \
    unless score @s sys.zipline_platform.id matches $(prev) \
    if data entity @s data.links[{id:$(from)}] \
    on vehicle \
    on vehicle \
    at @s \
    positioned ~ ~2 ~ run \
function sys:zipline_platform/interacted/aim
