
# effect
tag @s add dmger

data merge entity @s[tag=!boss] {Motion:[0.0d,0.7d,0.0d]}
scoreboard players set @s[tag=!boss] sys.fall_immunity 30

execute \
    as @a \
    if score @s player.id = #this player.id run \
tag @s add atker

scoreboard players set @p[sort=arbitrary,distance=..10,tag=atker] dmg_formula.atk_percentage 150

execute \
    as @p[sort=arbitrary,distance=..10,tag=atker] run \
function dmg_formula:weapons/type/sword/wind_sword/calculate

tag @p[sort=arbitrary,distance=..10,tag=atker] remove atker