execute \
    unless score @s bossfight.attack_module.timeline matches 0.. run \
return 0

scoreboard players add @s bossfight.attack_module.timeline 1

execute \
    if score @s bossfight.attack_module.timeline matches 1 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/direction_rdm

execute \
    if score @s bossfight.attack_module.timeline matches 2 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/tp

execute \
    if score @s bossfight.attack_module.timeline matches 3 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/rotated

execute \
    if score @s bossfight.attack_module.timeline matches 4 run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/fx

execute \
    unless score @s bossfight.attack_module.timeline matches 4.. run \
return 0

scoreboard players reset @s bossfight.attack_module.timeline
scoreboard players set @s bossfight.attack_module.state 1