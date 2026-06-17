execute \
    on target \
    store result score #world_area.main.dream.weapon_drop global.main run \
clear @s apple[custom_data~{beginner_tutorial:1b}] 0

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 64.. run \
give @p apple[custom_data={beginner_tutorial:1b}] 64

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