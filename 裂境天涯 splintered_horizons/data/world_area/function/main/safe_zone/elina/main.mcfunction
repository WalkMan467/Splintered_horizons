## ---開頭--- ##

    execute \
    as @n[tag=aj.elina.root,limit=1,tag=world_area.main.safe_zone.elina] at @s \
    if entity @p[distance=..6] facing entity @p[distance=..6] eyes run \
rotate @s ~ 0
    execute \
    as @n[tag=aj.elina.root,limit=1,tag=world_area.main.safe_zone.elina] at @s \
    unless entity @p[distance=..6] run \
rotate @s 45 0

    # Detect
    execute \
    positioned 741 145 968 store result score #world_area.main.safe_zone.elina global.main \
    if entity @a[distance=..16,gamemode=!spectator]

    # If true;
    execute \
    positioned 741 145 968 \
    if score #world_area.main.safe_zone.elina global.main matches 1 \
    if score #world_area.main.safe_zone.elina_temp global.main matches 0 run \
function world_area:main/safe_zone/elina/true

    # Else
    execute \
    positioned 741 145 968 \
    if score #world_area.main.safe_zone.elina global.main matches 0 \
    if score #world_area.main.safe_zone.elina_temp global.main matches 1 run \
function world_area:main/safe_zone/elina/false