## ---開頭--- ##

    # Detect

    execute \
        as @a[gamemode=!creative] at @s \
        if biome ~ ~ ~ world_area:main/safe_zone \
        if score #bossfight global.main matches 1.. \
        unless score #safe_area.enter global.main matches 1.. run \
        return run \
    function story:chapter_2/in_safe_zone/1/disabled/bossfight

    execute \
        as @a[gamemode=!creative] at @s \
        if biome ~ ~ ~ world_area:main/safe_zone \
        unless score #safe_area.enter global.main matches 1.. run \
    function story:chapter_2/in_safe_zone/1/0