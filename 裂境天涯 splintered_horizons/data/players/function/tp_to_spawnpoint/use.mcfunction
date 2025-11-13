execute if score #boss_area.chapter_2.elekiel global.main matches 1 run return 0
execute if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run return 0

tag @s remove player.death
function players:tp_to_spawnpoint/store

function players:tp_to_spawnpoint/tp with storage minecraft:player.data spawnpoint