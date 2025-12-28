scoreboard players remove #trap.raycast main.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 1 force @a

# 擊中敵人

execute \
    if score #trap.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if entity @n[distance=..1,type=marker,tag=trap.marker] run \
function trap:raycast/final

execute \
    if score #trap.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if entity @n[distance=..1,type=marker,tag=trap.marker] run \
return 0

# 擊中方塊

execute \
    if score #trap.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if block ~ ~ ~ #air run \
function trap:raycast/detect

# 到達最大距離

execute \
    if score #trap.raycast main.raycast matches 1 \
    positioned ^ ^ ^0.25 run \
function trap:raycast/final