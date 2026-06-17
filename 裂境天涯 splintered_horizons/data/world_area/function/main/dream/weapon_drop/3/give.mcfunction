execute \
    on target \
    store result score #world_area.main.dream.weapon_drop global.main run \
clear @s stone_pickaxe[custom_data~{beginner_tutorial:1b}] 0

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 1.. run \
give @p stone_pickaxe[enchantments={"efficiency":2},can_break=[{blocks:"spawner"}],unbreakable={},custom_data={beginner_tutorial:1b}] 1

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 1.. run \
function world_area:main/dream/weapon_drop/success

tag @s add temp

execute \
    on target \
    if score #world_area.main.dream.weapon_drop global.main matches 1.. run \
function world_area:main/dream/weapon_drop/failure

tag @s remove temp

data remove entity @s interaction