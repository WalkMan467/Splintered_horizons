execute \
    if score @s weapon.flame_of_finality.attack.timer matches 1.. run \
return 0

scoreboard players reset @s weapon.flame_of_finality.attack
scoreboard players reset @s weapon.flame_of_finality.attack.timer