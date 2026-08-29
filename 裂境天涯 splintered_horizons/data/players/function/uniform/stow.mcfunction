# 執行者 : 玩家
# 把真背包收進櫃子。只有 refresh 可以呼叫。

function players:inventory/save {bag:"real"}
tag @s add player.uniform.locker
