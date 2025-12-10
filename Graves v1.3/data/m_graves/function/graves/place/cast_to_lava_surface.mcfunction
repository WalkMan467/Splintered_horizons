## Raycast `&raycastLimit` blocks up until no longer in liquid.
scoreboard players remove &raycastLimit mp.temp 1
execute if score &raycastLimit mp.temp matches ..0 run return fail
execute positioned ~ ~1 ~ if block ~ ~ ~ lava[level=0] run return run function m_graves:graves/place/cast_to_lava_surface
execute if block ~ ~1 ~ #m_graves:grave_placeable run tp @s ~ ~1 ~
