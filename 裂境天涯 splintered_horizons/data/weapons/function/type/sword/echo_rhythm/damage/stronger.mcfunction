tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] atk 200

execute \
    as @p run \
function dmg_formula:weapons/type/sword/echo_rhythm/stronger/calculate

scoreboard players set #particle.sound_wave.color particle 1
function particle:sound_wave/use