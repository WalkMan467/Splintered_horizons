
execute \
    unless score @s particle.technological_force_field.line matches 1.. run \
return 0

scoreboard players remove @s particle.technological_force_field.line 1


execute store result score @s particle.technological_force_field.line.rdm run \
random value 1..12


execute \
    if score @s particle.technological_force_field.line.rdm matches 1 rotated 0 90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 2 rotated 0 -90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 3 rotated 90 0 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 4 rotated 180 0 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 5 rotated -90 0 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 6 rotated 0 0 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 7 rotated 90 90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 8 rotated 180 90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 9 rotated -90 90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 10 rotated 90 -90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 11 rotated 180 -90 run \
function particle:technological_force_field/raycast/use

execute \
    if score @s particle.technological_force_field.line.rdm matches 12 rotated -90 -90 run \
function particle:technological_force_field/raycast/use