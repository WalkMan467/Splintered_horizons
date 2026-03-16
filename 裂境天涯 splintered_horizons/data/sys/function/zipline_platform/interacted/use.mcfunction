
tag @s add sys.zipline_platform.using

execute \
    on target at @s run \
function sys:zipline_platform/interacted/player

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 normal @s
data remove entity @s interaction
tag @s remove sys.zipline_platform.using