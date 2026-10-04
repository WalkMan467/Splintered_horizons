# ===================================================
# 投擲 鉤爪 定位點 tp / thrown hook point tp

    ## Guide [ function weapons:type/drop/hook/point/tp ] >>> 投擲 鉤爪 定位點 tp / thrown hook point tp
    ## Guide [ function weapons:type/drop/hook/point/clear/detect ] >>> 投擲 鉤爪 定位點 清除 偵測 / thrown hook point clear detect
    ## Guide [ function weapons:type/drop/hook/point/clear/use ] >>> 投擲 鉤爪 定位點 清除 觸發 / thrown hook point clear activate
    ## Guide [ function weapons:type/drop/hook/point/guide ] >>> 投擲 鉤爪 定位點 分派 / thrown hook point dispatch

# ===================================================


# effect

execute facing entity @n[type=marker,tag=owner] feet run \
tp @s ^ ^ ^0.5


execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.animation.lock 4

execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.disable.elytra_switch 16

execute \
    on passengers \
    if entity @s[type=player] run \
scoreboard players set @s player.shift.skill.disable 16

execute \
    on passengers \
    if entity @s[type=player] run \
effect give @s slow_falling 2 0 true

    # Cancel

execute \
    if function weapons:type/drop/hook/point/clear/detect run \
function weapons:type/drop/hook/point/clear/use