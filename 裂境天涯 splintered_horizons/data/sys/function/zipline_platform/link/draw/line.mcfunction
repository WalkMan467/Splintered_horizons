# 沿著起點看向終點的方向，每 0.5 格點一顆粒子，走到終點或用完次數為止
# 顏色跟 chain_raycast 原本的一樣，外觀不會變

particle dust{color:[1.000,0.333,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players remove #itt sys.zipline_platform.link 1

execute \
    if score #itt sys.zipline_platform.link matches 1.. \
    unless entity @e[tag=sys.zipline_platform.draw_end,distance=..0.6,type=armor_stand] \
    positioned ^ ^ ^0.5 run \
function sys:zipline_platform/link/draw/line
