## ---異界傳送門--- ##

    execute \
    positioned \
    as 00000015-0000-0002-0000-002b00000007 \
    if score #world_area.other.otherworld_portal.3 world_area.other.otherworld_portal.delay matches 85.. \
    as @a[distance=..0.5] \
    in minecraft:overworld run \
function world_area:other/otherworld_portal/4/out
    execute \
    positioned \
    as 00000015-0000-0002-0000-002a00000006 \
    if score #world_area.other.otherworld_portal.3 world_area.other.otherworld_portal.delay matches 85.. \
    as @a[distance=..0.5] \
    in minecraft:overworld run \
function world_area:other/otherworld_portal/4/out

    # Detect
    execute \
    positioned 430.00 93.00 -146.50 \
    in minecraft:the_end \
    store result score #world_area.other.otherworld_portal.3 global.main \
    if entity @a[distance=..6,gamemode=!spectator]
    execute \
    positioned 430.00 93.00 -146.50 \
    in minecraft:the_end \
    if entity @a[distance=..6,gamemode=!spectator] run \
scoreboard players add #world_area.other.otherworld_portal.3 world_area.other.otherworld_portal.delay 1

    # If true;
    execute \
    positioned 430.00 93.00 -146.50 \
    in minecraft:the_end \
    if score #world_area.other.otherworld_portal.3 global.main matches 1 \
    if score #world_area.other.otherworld_portal.3_temp global.main matches 0 run \
function world_area:other/otherworld_portal/3/true

    # Else
    execute \
    positioned 430.00 93.00 -146.50 \
    in minecraft:the_end \
    if score #world_area.other.otherworld_portal.3 global.main matches 0 \
    if score #world_area.other.otherworld_portal.3_temp global.main matches 1 run \
function world_area:other/otherworld_portal/3/false