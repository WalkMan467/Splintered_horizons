execute \
    unless entity @s[tag=sys.zipline_platform.act,type=interaction] run \
return 0

tag @s add temp

execute \
    at @s \
    positioned ~ ~3 ~ \
    as @e[tag=sys.zipline_platform.as,distance=..1.5,sort=arbitrary] \
    if score @s sys.zipline_platform.id = @n[sort=arbitrary,tag=temp,tag=sys.zipline_platform.act,type=interaction] sys.zipline_platform.id run \
kill @s

tag @s remove temp

execute \
    at @s run \
function sys:zipline_platform/remove/1

kill @e[sort=arbitrary,distance=..30,tag=sys.detect,type=#minecraft:dummy_mob]