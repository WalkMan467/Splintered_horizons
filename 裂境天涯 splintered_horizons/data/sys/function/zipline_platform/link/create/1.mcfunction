# 找出 id 為 $(a) 的那座塔的連線清單 marker

$execute \
    as @e[tag=sys.zipline_platform.link,type=marker] \
    if score @s sys.zipline_platform.id matches $(a) run \
function sys:zipline_platform/link/create/2 with storage sys:zipline_platform link
