# Guide

    # 第一章
    execute if entity @s[tag=!campfire] run function world_area:chapter_1/loop

    # 第二章
    execute if entity @s[tag=!campfire] run function world_area:chapter_2/loop

#==================================================

# 全局

    # 冒險模式區域二級鎖

    execute if biome ~ ~ ~ #world_area:change_adventure run advancement grant @s[gamemode=survival] only world_area:main/mode_change/adventure
    execute unless biome ~ ~ ~ #world_area:change_adventure run advancement revoke @s only world_area:main/mode_change/adventure

    # 營火
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/in
    execute unless entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/out

    # 安全區
    execute if biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/in
    execute unless biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/out



    # 冒險 / 生存模式區域偵測
    execute if function #world_area:mode_change/adventure run return run advancement grant @s[gamemode=survival] only world_area:main/mode_change/adventure
    execute as @s[gamemode=adventure] run function world_area:main/mode_change/survival