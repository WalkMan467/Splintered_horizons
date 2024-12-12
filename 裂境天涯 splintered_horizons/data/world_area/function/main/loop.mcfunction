# Guide

    # 第一章
    function world_area:chapter_1/loop

#==================================================

# 全局

    # 生存模式區域

    execute if biome ~ ~ ~ #world_area:change_survival run advancement grant @s only world_area:main/mode_change/survival
    execute unless biome ~ ~ ~ #world_area:change_survival run advancement revoke @s only world_area:main/mode_change/survival