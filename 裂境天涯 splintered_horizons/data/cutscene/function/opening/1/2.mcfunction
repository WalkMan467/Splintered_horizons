forceload remove 10042 10310

execute \
    as 0004e729-0000-7a00-0000-198fffff5b77 at @s run \
data merge entity @s {teleport_duration:59}

execute \
    as 0004e729-0000-7a00-0000-198fffff5b77 at @s run \
tp @s 10052 124 10310


execute \
    as @n[tag=cutscene.opening.4,limit=1,distance=0..,type=block_display] at @s run \
tp @s ~-5 ~5 ~ ~ ~

execute \
    in minecraft:overworld \
    positioned 10055 123 10310 rotated 90 0 run \
function animated_java:amysis/summon {args: {animation: 'cutscene_opening_1', start_animation: true}}

schedule function cutscene:opening/1/3 2s