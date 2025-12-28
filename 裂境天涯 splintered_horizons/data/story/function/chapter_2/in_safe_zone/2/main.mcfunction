## ---開頭--- ##

    # Detect
    execute \
    positioned 765 146 992 store result score #story.chapter_2.in_safe_zone.2 global.main \
    if entity @a[distance=..6,gamemode=!spectator]
    
    # If true;
    execute \
    positioned 765 146 992 \
    if score #story.chapter_2.in_safe_zone.2 global.main matches 1 \
    if score #story.chapter_2.in_safe_zone.2_temp global.main matches 0 run \
function story:chapter_2/in_safe_zone/2/true

    # Else
    execute \
    positioned 765 146 992 \
    if score #story.chapter_2.in_safe_zone.2 global.main matches 0 \
    if score #story.chapter_2.in_safe_zone.2_temp global.main matches 1 run \
function story:chapter_2/in_safe_zone/2/false