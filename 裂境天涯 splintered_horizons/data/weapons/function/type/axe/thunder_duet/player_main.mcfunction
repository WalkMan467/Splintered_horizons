execute \
    if score @s weapon.thunder_duet.target.delay matches ..0 run \
    return run \
function weapons:type/axe/thunder_duet/rc/selected

execute \
    if score @s weapon.thunder_duet.target.delay matches 1.. run \
scoreboard players remove @s weapon.thunder_duet.target.delay 1