title @a times 20 20 20
title @a title {"text":"\uE000","font":"minecraft:screen"}

function animated_java:aska/remove/all
function animated_java:oceanid/remove/all
function animated_java:kyle/remove/all

forceload add 9984 10077 10015 10064

execute positioned 9998 93 10065 rotated 180 0 run function animated_java:aska/summon {args:{}}
execute positioned 9998 93 10065 rotated 180 0 as @n[tag=aj.aska.root,limit=1] run function animated_java:aska/animations/idle/play

execute positioned 10000 93 10065 rotated 180 0 run function animated_java:oceanid/summon {args:{}}
execute positioned 10000 93 10065 rotated 180 0 as @n[tag=aj.oceanid.root,limit=1] run function animated_java:oceanid/animations/idle/play

execute positioned 9999 95 10060 rotated 0 0 run function animated_java:kyle/summon {args:{}}


schedule function cutscene:opening/6/0 1s