scoreboard players set #world_area.other.otherworld_portal.4_temp global.main 0

execute positioned 949.50 88.00 494.00 rotated -90 0 in minecraft:overworld as @e[tag=aj.portal.root,distance=..3] run function animated_java:portal/remove/this

kill 00000015-0000-0002-0000-000200000015
kill 00000015-0000-0002-0000-000200000005
kill 00000015-0000-0002-0000-000200000007
kill 00000015-0000-0002-0000-0002000000d4
kill 000000d4-0000-0002-0000-000100000037

scoreboard players reset #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay