# 鉤子導向

execute \
    as @e[tag=sys.zipline_platform,distance=0..,type=item_display] at @s run \
function sys:zipline_platform/guide


execute \
    if entity @n[tag=sys.zipline_platform,distance=0..,type=item_display] run \
schedule function sys:zipline_platform/loop 1t