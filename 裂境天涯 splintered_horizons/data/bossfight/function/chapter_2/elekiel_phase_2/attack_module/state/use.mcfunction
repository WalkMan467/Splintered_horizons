tag @s add bossfight.attack_module

execute \
    store result score @s bossfight.attack_module.time run \
random value 3..5

scoreboard players reset @s bossfight.attack_module.cd
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack1/use