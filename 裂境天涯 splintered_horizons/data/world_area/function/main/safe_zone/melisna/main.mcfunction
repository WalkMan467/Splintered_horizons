## ---開頭--- ##

    execute as @n[tag=world_area.main.safe_zone.melisna,type=mannequin] at @s if entity @p[distance=..6] facing entity @p[distance=..6] eyes run rotate @s ~ 0
    execute as @n[tag=world_area.main.safe_zone.melisna,type=mannequin] at @s unless entity @p[distance=..6] run rotate @s 125 0

    execute as @n[tag=aj.isokla.root,tag=world_area.main.safe_zone.isokla,type=item_display] at @s if entity @p[distance=..6] facing entity @p[distance=..6] eyes run rotate @s ~ 0
    execute as @n[tag=aj.isokla.root,tag=world_area.main.safe_zone.isokla,type=item_display] at @s unless entity @p[distance=..6] run rotate @s 100 0


    # Detect
    execute positioned 774 146 987 store result score #world_area.main.safe_zone.melisna global.main if entity @a[distance=..16,gamemode=!spectator]

    # If true;
    execute positioned 774 146 987 if score #world_area.main.safe_zone.melisna global.main matches 1 if score #world_area.main.safe_zone.melisna_temp global.main matches 0 run function world_area:main/safe_zone/melisna/true

    # Else
    execute positioned 774 146 987 if score #world_area.main.safe_zone.melisna global.main matches 0 if score #world_area.main.safe_zone.melisna_temp global.main matches 1 run function world_area:main/safe_zone/melisna/false