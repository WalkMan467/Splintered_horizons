execute \
    unless score @s bossfight.attack_module.timeline matches 0.. run \
return 0

scoreboard players add @s bossfight.attack_module.timeline 1

execute \
    if score @s bossfight.attack_module.timeline matches 11 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/0/use

execute \
    if score @s bossfight.attack_module.timeline matches 12 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/1/use

execute \
    if score @s bossfight.attack_module.timeline matches 13 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/2/use

execute \
    if score @s bossfight.attack_module.timeline matches 14 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/3/use

execute \
    if score @s bossfight.attack_module.timeline matches 18 run \
    return run \
data modify entity @s NoGravity set value false

execute \
    unless score @s bossfight.attack_module.timeline matches 18.. run \
return 0

scoreboard players reset @s bossfight.attack_module.timeline
scoreboard players set @s bossfight.attack_module.state 1