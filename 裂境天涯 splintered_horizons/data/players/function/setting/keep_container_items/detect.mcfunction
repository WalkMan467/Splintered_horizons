# 執行者 : 打掉容器的玩家
#
# 方塊已經變成空氣了，沒辦法直接問「那格是不是箱子」，
# 但掉落物一定生在原本那格的方塊範圍內：
#   Block.popResource   -> x,z = 格心 ±0.25，y = 格心 -0.375~+0.125
#   Containers.dropContents -> x,y,z 都落在 0.0~0.875
# 兩者都沒有超出那一格，所以對掉落物 align xyz 就是被打掉的方塊座標。
#
# Age 0 先找，找不到再找 Age 1（函式跟實體 tick 的先後不保證）。
# 用 positioned as 而不是 as，執行者維持是玩家。

execute \
    if entity @n[distance=..8,nbt={Age:0s},type=item] \
    positioned as @n[distance=..8,nbt={Age:0s},type=item] \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
return run function players:setting/keep_container_items/hit

execute \
    if entity @n[type=item,distance=..8,nbt={Age:1s}] \
    positioned as @n[type=item,distance=..8,nbt={Age:1s}] \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
function players:setting/keep_container_items/hit
