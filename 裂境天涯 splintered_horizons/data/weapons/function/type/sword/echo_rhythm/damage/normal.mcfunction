tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 150

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

scoreboard players set #particle.sound_wave.color particle 0
function particle:sound_wave/use