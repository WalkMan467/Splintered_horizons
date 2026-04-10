execute \
    if score @s weapon.thunder_duet.target.marker matches 0.. run \
    return run \
scoreboard players remove @s weapon.thunder_duet.target.marker 1

scoreboard players reset @s weapon.thunder_duet.target.marker

execute \
    unless entity @s[type=player] run \
return 0

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players reset @s weapon.thunder_duet.passive.timer