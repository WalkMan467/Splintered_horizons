## Raycast `&raycastLimit` blocks down until hitting a block that a grave cannot be placed in. If the raycast exits the world, set &over_void to 1.
scoreboard players remove &raycastLimit mp.temp 1
execute if score &raycastLimit mp.temp matches ..0 run return fail
execute positioned ~ ~-1 ~ if block ~ ~ ~ #m_graves:grave_placeable run return run function m_graves:graves/place/cast_to_floor
execute unless block ~ ~-1 ~ #m_graves:grave_placeable run return run tp @s ~ ~ ~
scoreboard players set &over_void mp.temp 1
