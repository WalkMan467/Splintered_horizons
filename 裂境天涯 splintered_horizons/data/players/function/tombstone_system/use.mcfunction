scoreboard players add @s player.detect.is_bossfight 0
scoreboard players add #tombstone_sys global.main 0

execute if score @s player.detect.is_bossfight matches 1.. run return 0
execute unless score #tombstone_sys global.main matches 1.. run return 0
execute if biome ~ ~ ~ world_area:main/death_area run return 0
execute if entity @s[tag=player.tombstone_sys.disabled] run return 0

function players:inventory/save {bag:"tombstone"}
clear @s