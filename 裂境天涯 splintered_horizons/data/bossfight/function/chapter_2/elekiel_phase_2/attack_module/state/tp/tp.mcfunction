execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 1 run \
tp @s ~1.5 ~ ~ facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 2 run \
tp @s ~-1.5 ~ ~ facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 3 run \
tp @s ~ ~ ~1.5 facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 4 run \
tp @s ~ ~ ~-1.5 facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 5 run \
tp @s ~1.5 ~ ~1.5

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 6 run \
tp @s ~-1.5 ~ ~-1.5 facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 7 run \
tp @s ~1.5 ~ ~-1.5 facing entity @p[distance=..30] eyes

execute \
    at @r \
    if score #final bossfight.attack_module.direction matches 8 run \
tp @s ~-1.5 ~ ~1.5 facing entity @p[distance=..30] eyes

data modify entity @s NoGravity set value true