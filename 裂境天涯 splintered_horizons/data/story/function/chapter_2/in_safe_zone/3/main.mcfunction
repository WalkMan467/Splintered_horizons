## ---開頭--- ##

    # Detect
    execute \
    positioned 758 149 1003 \
    store result score #story.chapter_2.in_safe_zone.3 global.main \
    if entity @a[distance=..6,gamemode=!spectator]
    
    # If true;
    execute \
    positioned 758 149 1003 \
    if score #story.chapter_2.in_safe_zone.3 global.main matches 1 \
    if score #story.chapter_2.in_safe_zone.3_temp global.main matches 0 run \
function story:chapter_2/in_safe_zone/3/true

    # Else
    execute \
    positioned 758 149 1003 \
    if score #story.chapter_2.in_safe_zone.3 global.main matches 0 \
    if score #story.chapter_2.in_safe_zone.3_temp global.main matches 1 run \
function story:chapter_2/in_safe_zone/3/false