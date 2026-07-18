execute \
    as @e[sort=arbitrary,distance=0..,tag=weapon.thunder_duet.tunder,type=item_display] at @s run \
function weapons:type/axe/thunder_duet/rc/main

execute \
    as @e[sort=arbitrary,distance=..60,scores={weapon.thunder_duet.target.marker=-1..},type=!#minecraft:dummy_mob] at @s run \
function weapons:type/axe/thunder_duet/passive/main