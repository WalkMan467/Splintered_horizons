tag @s add temp.2

scoreboard players set @p[tag=temp,distance=..8,sort=arbitrary] weapon.thunder_duet.passive.cd 0

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=temp,tag=!atker] add atker
scoreboard players set @p[tag=atker,tag=temp] atk 250

execute \
    as @p[tag=atker,tag=temp] run \
function dmg_formula:weapons/type/axe/thunder_duet/calculate