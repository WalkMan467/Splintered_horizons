## Place a grave with the contents of 'multipack:graves'. Set &grave_spawned to if the grave was successfully placed
data merge entity @s {Tags:["multipack.grave"],width:1f,height:0.8f}
data modify entity @s data set from storage multipack:graves
execute if score #graves.locked mp.settings matches 1 run tag @s add multipack.grave.locked
scoreboard players set &grave_spawned mp.temp 0
# Set id scores
  # mp.const   - The grave id shared by all constituent entites of a grave (used when clearing grave)
  # mp.persist - The interaction entity's sheduled time to despawn the grave
  # mp.graves  - The interaction entity's owner's entity id and player's last spawned grave entity id (used in grave locking)
execute unless score @s mp.const matches -2147483648..2147483647 run scoreboard players add $graveID mp.graves 1
execute unless score @s mp.const matches -2147483648..2147483647 run scoreboard players operation @s mp.const = $graveID mp.graves
scoreboard players reset @p[predicate=m_graves:compare_id] mp.graves
scoreboard players operation @s mp.persist = $current_seconds mp.graves
scoreboard players operation @s mp.persist += #graves.despawn_seconds mp.settings
scoreboard players operation @s mp.graves = &id mp.temp

# Check for a valid adjacent position
scoreboard players set &bool mp.temp 0
execute store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable
execute if score &bool mp.temp matches 0 unless block ~ ~ ~ lava positioned ~ ~1.0 ~ store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable run tp @s ~ ~ ~
execute if score &bool mp.temp matches 0 positioned ~0.6 ~ ~ store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable run tp @s ~ ~ ~
execute if score &bool mp.temp matches 0 positioned ~-.6 ~ ~ store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable run tp @s ~ ~ ~
execute if score &bool mp.temp matches 0 positioned ~ ~ ~0.6 store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable run tp @s ~ ~ ~
execute if score &bool mp.temp matches 0 positioned ~ ~ ~-.6 store result score &bool mp.temp run execute if block ~ ~ ~ #m_graves:grave_placeable run tp @s ~ ~ ~
# Go to surface of lava
scoreboard players set &raycastLimit mp.temp 32
execute at @s if block ~ ~ ~ lava[level=0] run function m_graves:graves/place/cast_to_lava_surface
# Go to the floor
scoreboard players set &raycastLimit mp.temp 512
scoreboard players operation &id mp.temp = @s mp.graves
execute at @s if entity @p[predicate=m_graves:compare_id,predicate=!m_graves:on_ground] run function m_graves:graves/place/cast_to_floor
# Void recovery
scoreboard players set &bool mp.temp 0
execute if score &over_void mp.temp matches 1 if score #graves.void_recovery mp.settings matches 1 run function m_graves:graves/place/void_recovery with storage multipack:settings graves
scoreboard players reset &over_void mp.temp
execute if score &bool mp.temp matches 0 if entity @p[predicate=m_graves:compare_id,predicate=m_graves:in_void] run return run kill @s
# Spawn grave model
scoreboard players set &grave_spawned mp.temp 1
scoreboard players operation @p[predicate=m_graves:compare_id] mp.graves = $graveID mp.graves 
execute at @s align y run tp @s ~ ~ ~
execute at @s run function m_graves:graves/place/grave

