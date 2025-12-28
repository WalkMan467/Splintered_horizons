
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
    unless score #safe_area.enter global.main matches 1 run \
tellraw @s {"translate": "dialog.main.quick_actions.fail.safe_area","color": "red"}

execute \
    unless score #safe_area.enter global.main matches 1 run \
return 0

tp @s 762.50 144.94 969.50 0 -5