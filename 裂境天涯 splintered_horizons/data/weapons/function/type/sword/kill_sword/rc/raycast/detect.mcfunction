# ===================================================
# 劍 天地乖離開闢之星 右鍵 射線 偵測 / kill sword right click raycast detect

    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/detect ] >>> 劍 天地乖離開闢之星 右鍵 射線 偵測 / kill sword right click raycast detect
    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/final ] >>> 劍 天地乖離開闢之星 右鍵 射線 final / kill sword right click raycast final
    ## Guide [ function weapons:type/sword/kill_sword/rc/raycast/use ] >>> 劍 天地乖離開闢之星 右鍵 射線 觸發 / kill sword right click raycast activate

# ===================================================

scoreboard players remove #weapon.kill_sword.raycast main.raycast 1

particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a[distance=2..]

# 擊中敵人

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.5 \
    if entity @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] \
    as @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/sword/kill_sword/rc/raycast/final

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.5 \
    if entity @n[distance=..1.5,type=!#minecraft:dummy_mob,type=!player] run \
return 0

# 擊中方塊

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.5 \
    if block ~ ~ ~ #penetrate run \
function weapons:type/sword/kill_sword/rc/raycast/detect

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.5 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/sword/kill_sword/rc/raycast/final

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 2.. \
    positioned ^ ^ ^0.5 \
    unless block ~ ~ ~ #penetrate run \
return 0

# 到達最大距離

execute \
    if score #weapon.kill_sword.raycast main.raycast matches 1 \
    positioned ^ ^ ^0.5 run \
function weapons:type/sword/kill_sword/rc/raycast/final