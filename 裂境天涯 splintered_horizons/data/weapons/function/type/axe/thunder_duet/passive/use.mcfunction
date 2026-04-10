advancement revoke @s only weapons:type/axe/thunder_duet/passive/use

execute \
    if score @s weapon.thunder_duet.passive.state matches 2 run \
    return run \
function weapons:type/axe/thunder_duet/passive/2/run

execute \
    if score @s weapon.thunder_duet.passive.state matches 1 run \
    return run \
function weapons:type/axe/thunder_duet/passive/1/run