
execute \
    as @a \
    store result score @s player.auto_crafting.brick run \
clear @s minecraft:brick 0


execute \
    as @a \
    if score @s player.auto_crafting.brick matches 4.. run \
function players:auto_crafting/bricks/1