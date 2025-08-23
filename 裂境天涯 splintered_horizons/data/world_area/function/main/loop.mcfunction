# Guide

    # 第一章
    execute if entity @s[tag=!campfire] run function world_area:chapter_1/loop

    # 第二章
    execute if entity @s[tag=!campfire] run function world_area:chapter_2/loop

    # 第三章
    execute if entity @s[tag=!campfire] run function world_area:chapter_3/loop

    # 其他
    execute if entity @s[tag=!campfire] run function world_area:other/loop

#==================================================

function world_area:main/environment_particles/main
function world_area:main/safe_zone/amysis/main
function world_area:main/safe_zone/elina/main

# 全局

    # 營火
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6,type=minecraft:interaction] unless entity @n[distance=..6,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!system.campfire] run advancement grant @s only world_area:main/campfire/in
    execute if entity @s[gamemode=!spectator] if entity @n[tag=system.campfire,limit=1,distance=..6,type=minecraft:interaction] if entity @n[distance=..6,type=!#minecraft:dummy_mob,type=!minecraft:player,tag=!system.campfire] run advancement grant @s only world_area:main/campfire/out
    execute unless entity @n[tag=system.campfire,limit=1,distance=..6] run advancement grant @s only world_area:main/campfire/out

    # 營火黑暗
    effect give @s[tag=campfire] darkness 2 255 true

    # 安全區
    execute if biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/in
    execute unless biome ~ ~ ~ world_area:main/safe_zone run advancement grant @s only world_area:main/safe_zone/out

    # 冒險 / 生存模式區域偵測 (包括營火)
    execute if entity @s[gamemode=survival] if function world_area:main/mode_change/main run function world_area:main/mode_change/adventure
    execute if entity @s[gamemode=adventure] unless function world_area:main/mode_change/main run function world_area:main/mode_change/survival

    # 邊界牆
    execute if biome ~ ~ ~ world_area:main/boundary if predicate players:detect/not_creative_spectator run function world_area:main/boundary/in

    # 死亡區域
    execute if biome ~ ~ ~ world_area:main/death_area if predicate players:detect/not_creative_spectator run kill @s