tag @s add freeze.immunity
scoreboard players reset @s sys.dummy_mob
tag @s add cse.status_effect.immunity.all

execute \
    if data entity @s {HurtTime:9s} run \
function bossfight:chapter_2/elekiel_phase_2/skills/1/mysterray/on_hurt