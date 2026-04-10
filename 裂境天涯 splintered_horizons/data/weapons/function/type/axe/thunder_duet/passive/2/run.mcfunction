execute \
    if score @s weapon.thunder_duet.passive.timer matches 1.. run \
return 0

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players set @s weapon.thunder_duet.passive.timer 5
scoreboard players reset @s weapon.thunder_duet.target.marker
tag @s add atker

execute \
    as @n[scores={weapon.thunder_duet.target.marker=0..},distance=..8,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/axe/thunder_duet/passive/2/dmg

scoreboard players set @s weapon.thunder_duet.cd 100