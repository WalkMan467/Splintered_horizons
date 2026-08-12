execute \
    rotated ~-60.5 40 \
    anchored eyes run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/3/0

execute \
    rotated ~-60.5 40 \
    anchored eyes \
    positioned ^ ^ ^1.5 \
    as @a[distance=..1.625] run \
damage @s 3 bossfight:chapter_2/elekiel_phase_2/attack_module/attack2 by @n[sort=arbitrary,distance=..60,tag=monsters.elekiel_phase_2,type=skeleton]