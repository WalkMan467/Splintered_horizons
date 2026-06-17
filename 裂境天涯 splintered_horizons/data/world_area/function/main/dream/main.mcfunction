execute \
    positioned ~ ~-1 ~ \
    unless predicate world_area:main/dream/detect run \
return 0

execute \
    unless predicate players:detect/movement run \
    return run \
scoreboard players reset @s world_area.main.dream.fx.delay

execute \
    unless score @s world_area.main.dream.fx.delay matches 5.. run \
    return run \
scoreboard players add @s world_area.main.dream.fx.delay 1


scoreboard players reset @s world_area.main.dream.fx.delay


execute \
    positioned ~ ~0.1 ~ run \
function world_area:main/dream/fx/run

execute \
    store result score #rdm global.main run \
random value 1..5

execute \
    if score #rdm global.main matches 4 run \
function world_area:main/dream/fx/eye

execute \
    if score #rdm global.main matches 5 run \
function world_area:main/dream/fx/eye

execute \
    if score #rdm global.main matches 5 run \
function world_area:main/dream/fx/eye