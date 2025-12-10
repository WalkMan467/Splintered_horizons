## Called as respawning players
tag @s remove multipack.grave.dead
execute unless score @s mp.graves matches -2147483648..2147483647 run return 0
execute unless score #graves.key mp.settings matches 1 unless score #graves.compass mp.settings matches 1 run return 0
execute if score #graves.compass mp.settings matches 1 run data modify storage multipack:graves key.target set from entity @s LastDeathLocation
execute store result storage multipack:graves key.id int 1 run scoreboard players get @s mp.graves
function m_graves:graves/keys/give_key with storage multipack:graves key
