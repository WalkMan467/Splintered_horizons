$execute \
    as @e[tag=sys.zipline_platform.link,type=marker] \
    if score @s sys.zipline_platform.id matches $(a) run \
function sys:zipline_platform/link/erase/2 with storage sys:zipline_platform link
