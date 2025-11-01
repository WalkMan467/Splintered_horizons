scoreboard players remove #traps.raycast main.raycast 1

# particle flame ~ ~ ~ 0 0 0 0 1 force @a

# 擊中敵人
execute if score #traps.raycast main.raycast matches 2.. positioned ^ ^ ^0.25 if entity @n[distance=..1,type=marker,tag=traps.marker] run function traps:raycast/final
execute if score #traps.raycast main.raycast matches 2.. positioned ^ ^ ^0.25 if entity @n[distance=..1,type=marker,tag=traps.marker] run return 0

# 擊中方塊
execute if score #traps.raycast main.raycast matches 2.. positioned ^ ^ ^0.25 if block ~ ~ ~ #air run function traps:raycast/detect

# 到達最大距離
execute if score #traps.raycast main.raycast matches 1 positioned ^ ^ ^0.25 run function traps:raycast/final