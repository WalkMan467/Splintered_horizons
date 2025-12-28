## ---開頭--- ##

    # Detect
    execute store result score @s world_area.realm_of_the_black_hole.fx.marker \
    if entity @a[distance=..30,gamemode=!spectator,tag=!animation]

    # If true;
    execute \
    if score @s world_area.realm_of_the_black_hole.fx.marker matches 1 \
    if score @s world_area.realm_of_the_black_hole.fx.marker_temp matches 0 run \
function world_area:chapter_1/realm_of_the_black_hole/objects/fx/spawn

    # Else
    execute \
    if score @s world_area.realm_of_the_black_hole.fx.marker matches 0 \
    if score @s world_area.realm_of_the_black_hole.fx.marker_temp matches 1 run \
function world_area:chapter_1/realm_of_the_black_hole/objects/fx/remove