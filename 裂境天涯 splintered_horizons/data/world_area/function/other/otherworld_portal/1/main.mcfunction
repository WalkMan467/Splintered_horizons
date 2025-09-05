## ---異界傳送門--- ##

    execute positioned as 00000015-0000-0002-0000-000200000006 if score #world_area.other.otherworld_portal.1 world_area.other.otherworld_portal.delay matches 85.. as @a[distance=..0.5] in minecraft:overworld run function world_area:other/otherworld_portal/2/out
    execute positioned as 00000015-0000-0002-0000-000200000007 if score #world_area.other.otherworld_portal.1 world_area.other.otherworld_portal.delay matches 85.. as @a[distance=..0.5] in minecraft:overworld run function world_area:other/otherworld_portal/2/out

    # Detect
    execute positioned 6 35 97.0 in minecraft:the_end store result score #world_area.other.otherworld_portal.1 global.main if entity @a[distance=..6,gamemode=!spectator]
    execute positioned 6 35 97.0 in minecraft:the_end if entity @a[distance=..6,gamemode=!spectator] run scoreboard players add #world_area.other.otherworld_portal.1 world_area.other.otherworld_portal.delay 1

    # If true;
    execute positioned 6 35 97.0 in minecraft:the_end if score #world_area.other.otherworld_portal.1 global.main matches 1 if score #world_area.other.otherworld_portal.1_temp global.main matches 0 run function world_area:other/otherworld_portal/1/true

    # Else
    execute positioned 6 35 97.0 in minecraft:the_end if score #world_area.other.otherworld_portal.1 global.main matches 0 if score #world_area.other.otherworld_portal.1_temp global.main matches 1 run function world_area:other/otherworld_portal/1/false