execute \
    unless score @s weapon.grip_of_withering.passive.chance matches -2147483648..2147483647 run \
scoreboard players set @s weapon.grip_of_withering.passive.chance 15

execute \
    on attacker \
    unless score @s weapon.effect.shadow matches 1.. run \
return 0

execute \
    store result score #rdm weapon.grip_of_withering.passive.chance run \
random value 1..100

execute \
    if score @s weapon.grip_of_withering.passive.chance <= #rdm weapon.grip_of_withering.passive.chance run \
function weapons:type/sword/grip_of_withering/effect/0

execute \
    if score @s weapon.grip_of_withering.passive.chance > #rdm weapon.grip_of_withering.passive.chance run \
function weapons:type/sword/grip_of_withering/effect/1