# Cast

execute \
    as @s[tag=bossfight.attack_module] run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/main

# Cast

execute \
    if score @s bossfight.attack_module.cd matches ..0 run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/cast/cast