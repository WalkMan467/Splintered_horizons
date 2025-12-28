
# main

execute \
    as @e[type=marker,tag=fx.sagittarius_wave.main] at @s run \
function particle:sagittarius_wave/main.main

# ground ash

execute \
    as @e[type=block_display,tag=fx.sagittarius_wave.ga] at @s run \
function particle:sagittarius_wave/ground_ash/main

# air ash

execute \
    as @e[type=item_display,tag=fx.sw.aa] at @s run \
function particle:sagittarius_wave/air_ash/main

# fragments particle

execute \
    as @e[type=item,tag=sagittarius_wave.fragments] at @s run \
function particle:sagittarius_wave/fragments/main