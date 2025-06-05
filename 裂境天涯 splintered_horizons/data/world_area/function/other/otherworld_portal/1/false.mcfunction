scoreboard players set #world_area.other.otherworld_portal.1_temp global.main 0

execute positioned 6 35 97.0 rotated -90 0 in minecraft:the_end as @e[tag=aj.portal.root,distance=..3] run function animated_java:portal/remove/this

kill 00000015-0000-0002-0000-000200000005
kill 00000015-0000-0002-0000-000200000006
kill 00000015-0000-0002-0000-000200000007
kill 00000015-0000-0002-0000-000200000008

scoreboard players reset #world_area.other.otherworld_portal.1 world_area.other.otherworld_portal.delay