
# main

execute \
    as @e[type=marker,tag=fx.zeuss_lightning_wave.main] at @s run \
function particle:zeuss_lightning_wave/main.main

# ground ash

execute \
    as @e[tag=fx.zeuss_lightning_wave.ga] at @s run \
function particle:zeuss_lightning_wave/ground_ash/main

# air ash

execute \
    as @e[type=item_display,tag=fx.zlw.aa] at @s run \
function particle:zeuss_lightning_wave/air_ash/main