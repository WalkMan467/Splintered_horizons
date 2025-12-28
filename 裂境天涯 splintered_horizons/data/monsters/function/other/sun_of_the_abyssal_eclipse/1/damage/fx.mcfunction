scoreboard players add #monster.sun_of_the_abyssal_eclipse.1.damage.fx particle 10

particle trial_spawner_detection ^ ^ ^3 0.1 0 0.1 0 1 normal @a


execute rotated ~10 0 \
    if score #monster.sun_of_the_abyssal_eclipse.1.damage.fx particle matches ..360 run \
function monsters:other/sun_of_the_abyssal_eclipse/1/damage/fx