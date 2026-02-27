dialog clear @s

execute \
    if score #boss_area.chapter_2.elekiel global.main matches 1 run \
tellraw @s {"translate": "dialog.main.quick_actions.fail.boss","color": "red"}

execute \
    if score #boss_area.chapter_2.elekiel global.main matches 1 run \
return 0

execute \
    if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run \
tellraw @s {"translate": "dialog.main.quick_actions.fail.boss","color": "red"}

execute \
    if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run \
return 0

execute \
    if score @s player.death.delay matches ..10 run \
function sys:respawnpoint/tp/loading

execute \
    if score @s player.death.delay matches ..10 run \
scoreboard players add @s player.death.delay 1

execute \
    unless score @s player.death.delay matches 10.. run \
return 0

scoreboard players reset @s player.death.delay

attribute @s entity_interaction_range modifier remove sys.respawnpoint.tp.loading
attribute @s block_interaction_range modifier remove sys.respawnpoint.tp.loading
attribute @s attack_damage modifier remove sys.respawnpoint.tp.loading
attribute @s movement_speed modifier remove sys.respawnpoint.tp.loading
attribute @s jump_strength modifier remove sys.respawnpoint.tp.loading

effect clear @s invisibility
effect clear @s blindness
effect clear @s darkness
effect clear @s resistance
effect clear @s fire_resistance
effect clear @s regeneration

function music:stop
tag @s remove player.death
function sys:respawnpoint/tp/store

function sys:respawnpoint/tp/run with storage minecraft:player.data spawnpoint