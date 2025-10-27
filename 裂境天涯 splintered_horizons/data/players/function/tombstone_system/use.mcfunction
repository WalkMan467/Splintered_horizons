scoreboard players add @s player.detect.is_bossfight 0
scoreboard players add #tombstone_system global.main 0

execute if score @s player.detect.is_bossfight matches 1 run return 0
execute unless score #tombstone_system global.main matches 1.. run return 0

function players:inventory/save {bag:"tombstone"}
clear @s

function players:tombstone_system/act/summon