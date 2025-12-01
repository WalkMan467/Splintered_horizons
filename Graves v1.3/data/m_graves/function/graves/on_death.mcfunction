## Store inventory item in a new grave handle death effects.
scoreboard players reset @s mp.death
execute if entity @s[gamemode=spectator] run return 0
execute unless score #graves mp.settings matches 1.. run return 0
execute if biome ~ ~ ~ world_area:main/death_area run return 0
execute if biome ~ ~ ~ world_area:main/boundary run return 0

tag @s add multipack.grave.dead
execute unless score @s mp.const matches -2147483648..2147483647 run scoreboard players add $id mp.const 1
execute unless score @s mp.const matches -2147483648..2147483647 run scoreboard players operation @s mp.const = $id mp.persist
scoreboard players operation &id mp.temp = @s mp.const
function m_graves:graves/store/store_inventory
execute if data storage multipack:graves {Xp:0} unless data storage multipack:graves item[0] run return 0

execute summon interaction run function m_graves:graves/place/place
execute if score #graves.death_coords mp.settings matches 1 run function m_graves:graves/tell_coords
scoreboard players reset &grave_spawned mp.temp
