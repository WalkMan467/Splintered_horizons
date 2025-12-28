
execute store result storage sys:portal end.x float 1 run \
data get entity @s data.Transmit[0]

execute store result storage sys:portal end.y float 1 run \
data get entity @s data.Transmit[1]

execute store result storage sys:portal end.z float 1 run \
data get entity @s data.Transmit[2]


execute store result storage sys:portal end.facing_x float 1 run \
data get entity @s data.Transmit_facing[0]

execute store result storage sys:portal end.facing_y float 1 run \
data get entity @s data.Transmit_facing[1]


execute \
    as @p[distance=..19] at @s run \
function sys:portal/tp with storage sys:portal end