# ===================================================
# 投擲 鉤爪 定位點 清除 觸發 / thrown hook point clear activate

    ## Guide [ function weapons:type/drop/hook/point/clear/use ] >>> 投擲 鉤爪 定位點 清除 觸發 / thrown hook point clear activate
    ## Guide [ function weapons:type/drop/hook/point/tp ] >>> 投擲 鉤爪 定位點 tp / thrown hook point tp

# ===================================================


# effect

effect give @p levitation 1 2 true
effect give @p slow_falling 2 0 true
scoreboard players set @p player.shift.skill.disable 16
scoreboard players set @p player.disable.elytra_switch 16

kill @s
kill @n[type=marker,tag=owner]