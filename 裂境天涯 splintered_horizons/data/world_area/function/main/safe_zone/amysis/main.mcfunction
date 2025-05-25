## ---開頭--- ##

    execute as @n[tag=aj.amysis.root,limit=1,tag=world_area.main.safe_zone.amysis] at @s if entity @p[distance=..6] facing entity @p[distance=..6] eyes run rotate @s ~ 0
    execute as @n[tag=aj.amysis.root,limit=1,tag=world_area.main.safe_zone.amysis] at @s unless entity @p[distance=..6] run rotate @s -145 0

    # Detect
    execute positioned 752 146 993 store result score #world_area.main.safe_zone.amysis global.main if entity @a[distance=..16,gamemode=!spectator]

    # If true;
    execute positioned 752 146 993 if score #world_area.main.safe_zone.amysis global.main matches 1 if score #world_area.main.safe_zone.amysis_temp global.main matches 0 run function world_area:main/safe_zone/amysis/true

    # Else
    execute positioned 752 146 993 if score #world_area.main.safe_zone.amysis global.main matches 0 if score #world_area.main.safe_zone.amysis_temp global.main matches 1 run function world_area:main/safe_zone/amysis/false