scoreboard players add @s particle.grip_of_withering.passive.timer 1

execute \
    if score @s particle.grip_of_withering.passive.timer matches 1 run \
function particle:type/expansion/grip_of_withering/passive/sword/0

execute \
    if score @s particle.grip_of_withering.passive.timer matches 6 run \
function particle:type/expansion/grip_of_withering/passive/sword/1

execute \
    if score @s particle.grip_of_withering.passive.timer matches 11 run \
function particle:type/expansion/grip_of_withering/passive/sword/2

execute \
    if score @s particle.grip_of_withering.passive.timer matches 13 run \
function particle:type/expansion/grip_of_withering/passive/sword/3

execute \
    if score @s particle.grip_of_withering.passive.timer matches 15 run \
function particle:type/expansion/grip_of_withering/passive/sword/4