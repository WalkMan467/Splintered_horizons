
execute \
    unless score @s particle.technological_force_field.line.color matches -2147483648..2147483647 run \
function particle:technological_force_field/raycast/color_change


execute \
    store result score @s particle.technological_force_field.line.rdm run \
random value 1..4

execute \
    if score @s particle.technological_force_field.line.rdm matches 1 run \
rotate @s 0 0

execute \
    if score @s particle.technological_force_field.line.rdm matches 2 run \
rotate @s 90 0

execute \
    if score @s particle.technological_force_field.line.rdm matches 3 run \
rotate @s 180 0

execute \
    if score @s particle.technological_force_field.line.rdm matches 4 run \
rotate @s -90 0


execute \
    store result score @s particle.technological_force_field.line run \
random value 10..20

function particle:technological_force_field/raycast/use

tag @s remove summon