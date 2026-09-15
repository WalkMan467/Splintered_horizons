# 有物理：水平自己推，Y 軸整個丟給原版物理
#
# /tp 會做兩件事 →  把 Motion[1] 歸零、把 OnGround 設成 1
# 這就是為什麼物理有開沒開，只要 tp 過去都一樣不掉不彈
#
# 解法：tp 前先把這一刻的垂直速度存起來，tp 完再寫回去
# 這樣重力、方塊碰撞、bounciness 都還是原版自己算的，我們只動 XZ
# 順序是「function tick → 實體 tick」，所以寫回去的速度下一格移動就會吃到


data modify storage particle.radial_exoansion temp.motion set from entity @s Motion[1]


# 只推水平：pitch 鎖 0，不然灰燼會照著 setup 的俯角斜著飛，Y 就不是物理算的了
# setup 讓灰燼面向中心 marker，所以「往外」是 ^ ^ ^-0.5

execute \
    rotated ~ 0 run \
tp @s ^ ^ ^-0.5


# 推進後如果人在方塊裡就爬一階上去，不要整顆埋進地形
# （這裡只動 Y，不會去改 XZ，所以不會亂彈）

execute \
    at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


# 把垂直速度還回去

data modify entity @s Motion[1] set from storage particle.radial_exoansion temp.motion
