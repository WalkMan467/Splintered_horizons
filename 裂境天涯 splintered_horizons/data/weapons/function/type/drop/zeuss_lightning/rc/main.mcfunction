# ===================================================
# 投擲 宙斯閃電 右鍵 主迴圈 / thrown zeuss lightning right click loop

    ## Guide [ function weapons:type/drop/zeuss_lightning/rc/main ] >>> 投擲 宙斯閃電 右鍵 主迴圈 / thrown zeuss lightning right click loop
    ## Guide [ function weapons:type/drop/zeuss_lightning/rc/run ] >>> 投擲 宙斯閃電 右鍵 執行 / thrown zeuss lightning right click run
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================


execute \
    if score @s weapon.zeuss_lightning.use matches 1.. run \
return 0

stopsound @s voice minecraft:entity.warden.sonic_charge

execute \
    if score @s weapon.zeuss_lightning.hold_down matches 40 run \
function weapons:type/drop/zeuss_lightning/rc/run

scoreboard players reset @s weapon.zeuss_lightning.use
scoreboard players reset @s weapon.zeuss_lightning.hold_down

scoreboard players set @s player.click.interval 10

tag @s add player.elytra_switch.safe_fall


attribute @s minecraft:gravity base reset
attribute @s gravity modifier remove weapon.zeuss_lightning.effect

tag @s remove zeuss_lightning.user
