# Attack module all timer

execute \
    if score @s bossfight.attack_module.cd matches 0.. run \
scoreboard players remove @s bossfight.attack_module.cd 1

execute \
    if score @s bossfight.attack_module.cast matches 0.. run \
scoreboard players remove @s bossfight.attack_module.cast 1