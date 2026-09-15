execute \
    unless entity @s[tag=sys.zipline_platform.act,type=interaction] run \
return 0

tag @s add temp

# 先把別座塔指向這座的連線刪掉，不然會留下指向已經不存在的塔的死連線
execute store result storage sys:zipline_platform link.b int 1 run scoreboard players get @s sys.zipline_platform.id

function sys:zipline_platform/link/erase/all with storage sys:zipline_platform link

execute \
    at @s \
    positioned ~ ~3 ~ \
    as @e[tag=sys.zipline_platform.as,distance=..1.5,sort=arbitrary] \
    if score @s sys.zipline_platform.id = @n[sort=arbitrary,tag=temp,tag=sys.zipline_platform.act,type=interaction] sys.zipline_platform.id run \
function sys:zipline_platform/remove/as

tag @s remove temp

execute \
    at @s run \
function sys:zipline_platform/remove/1

kill @e[sort=arbitrary,distance=..30,tag=sys.detect,type=#minecraft:dummy_mob]