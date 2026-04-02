scoreboard players reset @s weapon.thunder_duet.target.delay

tag @s add temp

execute \
    as @e[sort=arbitrary,distance=..8,tag=!temp.2,type=!player,type=!#minecraft:dummy_mob] at @s \
    if score @s weapon.thunder_duet.id = @p[sort=arbitrary,distance=..8,tag=temp] weapon.thunder_duet.id run \
function weapons:type/axe/thunder_duet/rc/damage


tag @s remove temp

tag @n[sort=random,distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] add weapon.thunder_duet.target

execute \
    as @n[sort=arbitrary,distance=..8,tag=weapon.thunder_duet.target,type=!player,type=!#minecraft:dummy_mob] run \
function weapons:type/axe/thunder_duet/rc/target

scoreboard players reset @e[sort=arbitrary,distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.id

tag @e[sort=arbitrary,distance=..8,tag=temp.2,type=!#minecraft:dummy_mob,type=!player] remove temp.2
scoreboard players reset @s weapon.thunder_duet.id