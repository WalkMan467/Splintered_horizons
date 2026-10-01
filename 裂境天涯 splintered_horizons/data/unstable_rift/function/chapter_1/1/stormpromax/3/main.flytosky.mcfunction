# 執行者 : player & boss

# 飛到 372 就停住，不要再往上。高塔在 373，玩家停在塔下 1 格才打得到核心。
#
# 原本是 y=305.0,dy=1 的 1 格薄片，上升太快跨過那一格就永遠不會命中，
# 人會一路飄上去。改成「372 以上通通算」，等於一道硬天花板。

execute \
    unless entity @s[y=372,dy=1000] run \
return 0

attribute @s gravity base set 0
tp @s ~ 372 ~
