## ---開頭--- ##

    execute \
    positioned 766 146 966 \
    as @n[tag=aj.selena.root,limit=1,tag=world_area.main.safe_zone.selena,distance=..1,type=item_display] at @s \
    if entity @p[sort=arbitrary,distance=..8] \
    if entity @p[distance=..8,predicate=players:detect/movement] \
    facing entity @p[distance=..8] eyes \
    rotated ~ 0 run \
    function aj:selena/move


    execute \
    positioned 766 146 966 \
    as @n[distance=..1,tag=aj.selena.root,limit=1,tag=world_area.main.safe_zone.selena,type=item_display] at @s \
    unless entity @p[sort=arbitrary,distance=..8] \
    rotated 135 0 run \
    function aj:selena/move

    # Detect
    execute \
    positioned 766 146 966 \
    store result score #world_area.main.safe_zone.selena global.main \
    if entity @a[distance=..8,gamemode=!spectator]

    # If true;
    execute \
    positioned 766 146 966 \
    if score #world_area.main.safe_zone.selena global.main matches 1 \
    if score #world_area.main.safe_zone.selena_temp global.main matches 0 run \
function world_area:main/safe_zone/selena/true

    # Else
    execute \
    positioned 766 146 966 \
    if score #world_area.main.safe_zone.selena global.main matches 0 \
    if score #world_area.main.safe_zone.selena_temp global.main matches 1 run \
function world_area:main/safe_zone/selena/false