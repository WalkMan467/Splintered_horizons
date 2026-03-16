
tp @s ^ ^ ^1 ~ ~
tag @s add sys.fall_immunity

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a

execute at @s \
    positioned ^ ^ ^1 \
    if entity @n[distance=..2,tag=sys.zipline_platform.target,type=interaction] run \
function sys:zipline_platform/effect


execute at @s \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ barrier run \
kill @s

execute at @s \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ #penetrate run \
function sys:zipline_platform/effect


execute at @s \
    unless block ^ ^ ^1 #penetrate run \
kill @s