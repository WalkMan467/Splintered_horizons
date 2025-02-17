# Guide

    # 第一章
    execute if entity @s[tag=!campfire] run function world_area:chapter_1/loop

    # 第二章
    execute if entity @s[tag=!campfire] run function world_area:chapter_2/loop

#==================================================

# 全局

    # 生存模式區域

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ #world_area:change_survival run advancement grant @s only world_area:main/mode_change/survival
    execute unless biome ~ ~ ~ #world_area:change_survival run advancement revoke @s only world_area:main/mode_change/survival

    # 冒險模式區域

    execute if entity @s[gamemode=!spectator] if biome ~ ~ ~ #world_area:change_adventure run advancement grant @s only world_area:main/mode_change/adventure
    execute unless biome ~ ~ ~ #world_area:change_adventure run advancement revoke @s only world_area:main/mode_change/adventure

    # 營火
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/in
    execute unless entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/out