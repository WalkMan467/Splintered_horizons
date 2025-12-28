scoreboard players set #world_area.other.otherworld_portal.2_temp global.main 0


execute \
    positioned 161.0 91 -427 rotated -90 0 \
    in minecraft:overworld \
    as @e[tag=aj.portal.root,distance=..3] run \
function animated_java:portal/remove/this

kill 00000015-0000-0002-0000-000200000001
kill 00000015-0000-0002-0000-000200000002
kill 00000015-0000-0002-0000-000200000003
kill 00000015-0000-0002-0000-000200000004
kill 000000d4-0000-0002-0000-000100000033

scoreboard players reset #world_area.other.otherworld_portal.2 world_area.other.otherworld_portal.delay