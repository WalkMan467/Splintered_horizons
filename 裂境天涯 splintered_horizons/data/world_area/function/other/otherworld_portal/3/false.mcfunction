scoreboard players set #world_area.other.otherworld_portal.3_temp global.main 0


execute \
    positioned 430.00 93.00 -146.50 rotated -90 0 \
    in minecraft:the_end \
    as @e[tag=aj.portal.root,distance=..3] run \
function animated_java:portal/remove/this

kill 00000015-0000-0002-0000-002c00000008
kill 00000015-0000-0002-0000-002b00000007
kill 00000015-0000-0002-0000-002a00000006
kill 00000015-0000-0002-0000-002900000005

scoreboard players reset #world_area.other.otherworld_portal.3 world_area.other.otherworld_portal.delay