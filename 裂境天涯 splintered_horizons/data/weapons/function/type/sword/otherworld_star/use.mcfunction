
execute \
    if score @s weapon.otherworld_star.timer matches 1.. run \
scoreboard players add @s weapon.otherworld_star.effect 1

execute \
    if score @s weapon.otherworld_star.cd matches 1.. run \
return 0

scoreboard players set @s weapon.otherworld_star.cd 61
scoreboard players set @s weapon.otherworld_star.timer 60