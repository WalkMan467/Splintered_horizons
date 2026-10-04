
# 執行者 : 離視線點最近的投影點 marker，也就是角度上最接近你準心的那一座
#
# 只在這次的候選集裡找（sys.zipline_platform.candidate），編號也是這次
# 才發的，所以一定只有一座符合，return run 不會標錯

scoreboard players operation #pick.target sys.zipline_platform.pick = @s sys.zipline_platform.pick

execute \
    as @e[tag=sys.zipline_platform.candidate,distance=0..,type=interaction] \
    if score @s sys.zipline_platform.pick = #pick.target sys.zipline_platform.pick run \
    return run \
tag @s add sys.zipline_platform.target
