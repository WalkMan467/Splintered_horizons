# execute \
#     if score @s duration matches ..80 \
#     rotated ~ 0 run \
# function particle:fsc/energy_convergence/fx

# execute \
#     if score @s duration matches ..80 \
#     rotated ~120 0 run \
# function particle:fsc/energy_convergence/fx

# execute \
#     if score @s duration matches ..80 \
#     rotated ~240 0 run \
# function particle:fsc/energy_convergence/fx

# execute \
#     if score @s duration matches ..90 \
#     rotated ~ 0 run \
# function particle:fsc/energy_convergence/fx_2

scoreboard players set @s particle.technological_force_field.line.color 1

function particle:technological_force_field/use

execute \
    if score @s duration matches ..80 \
    rotated 0 -90 run \
function particle:fsc/fx_2/use