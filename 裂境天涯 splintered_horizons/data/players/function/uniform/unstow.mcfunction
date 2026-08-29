# 執行者 : 玩家
# 把真背包還給玩家。只有 wear/none 可以呼叫。

function players:inventory/return {bag:"real"}
tag @s remove player.uniform.locker
