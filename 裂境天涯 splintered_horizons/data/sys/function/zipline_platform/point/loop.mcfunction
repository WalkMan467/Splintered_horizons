
execute \
    as @e[tag=sys.zipline_platform.point,distance=0..,type=marker] at @s run \
function sys:zipline_platform/point/guide


execute \
    if entity @n[tag=sys.zipline_platform.point,distance=0..,type=marker] run \
schedule function sys:zipline_platform/point/loop 1t