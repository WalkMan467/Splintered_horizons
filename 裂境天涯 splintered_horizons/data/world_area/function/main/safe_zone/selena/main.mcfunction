## ---開頭--- ##

    execute as @n[tag=aj.selena.root,limit=1,tag=world_area.main.safe_zone.selena] at @s if entity @p[distance=..8] facing entity @p[distance=..8] eyes run rotate @s ~ 0
    execute as @n[tag=aj.selena.root,limit=1,tag=world_area.main.safe_zone.selena] at @s unless entity @p[distance=..8] run rotate @s 135 0

    # Detect
    execute positioned 766 145 966 store result score #world_area.main.safe_zone.selena global.main if entity @a[distance=..8,gamemode=!spectator]

    # If true;
    execute positioned 766 145 966 if score #world_area.main.safe_zone.selena global.main matches 1 if score #world_area.main.safe_zone.selena_temp global.main matches 0 run function world_area:main/safe_zone/selena/true

    # Else
    execute positioned 766 145 966 if score #world_area.main.safe_zone.selena global.main matches 0 if score #world_area.main.safe_zone.selena_temp global.main matches 1 run function world_area:main/safe_zone/selena/false