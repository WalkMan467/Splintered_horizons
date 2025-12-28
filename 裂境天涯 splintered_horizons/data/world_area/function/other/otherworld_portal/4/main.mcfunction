## ---異界傳送門--- ##

    execute \
    positioned \
    as 00000015-0000-0002-0000-000200000033 \
    unless score #world_area.other.otherworld_portal.4.lock global.main matches 1.. \
    if score #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay matches 85.. \
    as @a[distance=..0.5] \
    in minecraft:the_end run \
function world_area:other/otherworld_portal/4/in
    execute \
    positioned \
    as 00000015-0000-0002-0000-00020000000c \
    unless score #world_area.other.otherworld_portal.4.lock global.main matches 1.. \
    if score #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay matches 85.. \
    as @a[distance=..0.5] \
    in minecraft:the_end run \
function world_area:other/otherworld_portal/4/in


    # Detect

    execute \
    positioned 949.50 88.00 494.00 \
    if score #world_area.other.otherworld_portal.4.lock global.main matches 1.. run \
scoreboard players set @a[distance=..6,gamemode=!spectator] player.actionbar.otherworld_portal.1 2

    execute \
    positioned 949.50 88.00 494.00 \
    in minecraft:overworld store result score #world_area.other.otherworld_portal.4 global.main \
    if entity @a[distance=..6,gamemode=!spectator]
    execute \
    positioned 949.50 88.00 494.00 \
    in minecraft:overworld \
    if entity @a[distance=..6,gamemode=!spectator] run \
scoreboard players add #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay 1

    # If true;
    execute \
    positioned 949.50 88.00 494.00 \
    in minecraft:overworld \
    if score #world_area.other.otherworld_portal.4 global.main matches 1 \
    if score #world_area.other.otherworld_portal.4_temp global.main matches 0 run \
function world_area:other/otherworld_portal/4/true

    # Else
    execute \
    positioned 949.50 88.00 494.00 \
    in minecraft:overworld \
    if score #world_area.other.otherworld_portal.4 global.main matches 0 \
    if score #world_area.other.otherworld_portal.4_temp global.main matches 1 run \
function world_area:other/otherworld_portal/4/false