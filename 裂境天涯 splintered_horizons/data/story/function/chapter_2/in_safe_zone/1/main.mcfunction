## ---開頭--- ##

    # Detect
    execute \
    as @a at @s \
    if biome ~ ~ ~ world_area:main/safe_zone \
    unless score #safe_area.enter global.main matches 1.. run \
function story:chapter_2/in_safe_zone/1/0