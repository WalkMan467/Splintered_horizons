tag @s add owner
scoreboard players operation #this sys.zipline_platform.id = @s sys.zipline_platform.id

execute \
    as @a \
    if score @s sys.zipline_platform.id = #this sys.zipline_platform.id at @s run \
tag @s add user

execute \
    as @e[distance=0..,tag=sys.zipline_platform.point_player,type=item_display] \
    if score @s sys.zipline_platform.id = #this sys.zipline_platform.id run \
tag @s add user.vehicle


execute \
    unless entity @n[distance=0..,tag=user.vehicle,type=item_display] \
    as @p[tag=user] at @s run \
function sys:zipline_platform/point/summon

scoreboard players set #cancel sys.zipline_platform.id 0


execute \
    as @n[tag=user.vehicle,distance=0..,type=item_display] at @s run \
function sys:zipline_platform/point/tp

execute \
    as @n[tag=user.vehicle,distance=0..,type=item_display] at @s run \
function sys:zipline_platform/point/tp

tag @a[tag=user] remove user
tag @n[tag=user.vehicle,distance=0..,type=item_display] remove user.vehicle
tag @s remove owner