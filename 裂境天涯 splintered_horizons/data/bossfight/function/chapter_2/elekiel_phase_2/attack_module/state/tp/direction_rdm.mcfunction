scoreboard players operation @s bossfight.attack_module.direction.last_time = @s bossfight.attack_module.direction

execute \
    store result score @s bossfight.attack_module.direction run \
random value 1..8

execute \
    if score @s bossfight.attack_module.direction.last_time = @s bossfight.attack_module.direction run \
    return run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/tp/direction_rdm

scoreboard players operation #final bossfight.attack_module.direction = @s bossfight.attack_module.direction