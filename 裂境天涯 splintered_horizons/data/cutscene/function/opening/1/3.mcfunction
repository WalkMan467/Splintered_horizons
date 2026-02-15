
execute \
    as 0004e729-0000-7a00-0000-198fffff5b77 at @s run \
data merge entity @s {teleport_duration:59}

execute \
    as 0004e729-0000-7a00-0000-198fffff5b77 at @s run \
tp @s ~ ~ ~ -90 -5
schedule function cutscene:opening/2/use 10s