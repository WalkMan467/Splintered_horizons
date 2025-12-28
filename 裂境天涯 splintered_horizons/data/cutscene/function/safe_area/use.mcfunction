tp @a 758 143 935

scoreboard players set #cutscene global.main 1
scoreboard players set #cutscene.safe_area global.main 1

title @a times 20 20 20
title @a title {"text":"\uE000","font":"minecraft:screen"}


execute \
    as @a run \
function item:type/tp_book/rc/cancel

stopsound @a record
stopsound @a voice minecraft:voice.footsteps


execute \
    as @a at @s run \
playsound minecraft:voice.footsteps voice @s ~ ~ ~ 1 1

execute \
    as @a at @s run \
playsound minecraft:bgm.scott_buckley_into_the_unknown record @s ~ ~ ~ 1 1

function cutscene:safe_area/stop
schedule function cutscene:safe_area/0/use 10t

scoreboard objectives setdisplay sidebar