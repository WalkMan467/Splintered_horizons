scoreboard players remove #weapon.flame_of_finality.raycast main.raycast 1

# particle flame ~ ~ ~ 0.25 0.25 0.25 0 3 force @a

# 擊中敵人

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if entity @n[distance=..1,tag=trap.marker,type=marker] run \
function weapons:type/scythe/flame_of_finality/lc/3/final

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if entity @n[distance=..1,tag=trap.marker,type=marker] run \
return 0

# 擊中實體

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if entity @n[sort=arbitrary,distance=..1.5,type=!#minecraft:dummy_mob,type=!player] run \
function weapons:type/scythe/flame_of_finality/lc/3/final

# 擊中方塊

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/scythe/flame_of_finality/lc/3/detect

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.25 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/scythe/flame_of_finality/lc/3/final

# 到達最大距離

execute \
    if score #weapon.flame_of_finality.raycast main.raycast matches 1 \
    positioned ^ ^ ^0.25 run \
function weapons:type/scythe/flame_of_finality/lc/3/final