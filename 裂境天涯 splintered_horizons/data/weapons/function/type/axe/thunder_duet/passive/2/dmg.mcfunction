tag @e[type=!player,type=!#dummy_mob,distance=..6] add dmger
scoreboard players set @p[sort=arbitrary,tag=atker] dmg_formula.atk_percentage 350

execute \
    as @p[sort=arbitrary,tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

scoreboard players set #particle.thunder_duet_wave.color particle 2
function particle:thunder_duet_wave/use

effect clear @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] glowing
scoreboard players reset @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.target.marker