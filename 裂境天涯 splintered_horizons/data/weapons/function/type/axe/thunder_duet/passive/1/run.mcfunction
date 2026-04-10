execute \
    if score @s weapon.thunder_duet.passive.timer matches 1.. run \
return 0

scoreboard players set @s weapon.thunder_duet.passive.cd 100
scoreboard players set @s weapon.effect.shadow 100
scoreboard players set @s weapon.thunder_duet.passive.timer 5
scoreboard players set @s weapon.thunder_duet.passive.state 2

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 8000
scoreboard players set $z player_motion.api.launch 0

function player_motion:api/launch_xyz

tag @s add weapon.thunder_duet.user

execute \
    at @n[scores={weapon.thunder_duet.target.marker=0..},distance=..8,type=!#minecraft:dummy_mob,type=!player] \
    as @e[sort=arbitrary,distance=..3,type=!#minecraft:dummy_mob,type=!player] \
    unless score @s weapon.thunder_duet.target.marker matches 0.. at @s \
    facing entity @n[scores={weapon.thunder_duet.target.marker=0..},distance=..3,type=!#minecraft:dummy_mob,type=!player] feet \
    rotated ~ 0 run \
function weapons:type/axe/thunder_duet/passive/1/dmg

scoreboard players set #particle.thunder_duet_wave.color particle 1

execute \
    at @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] run \
function particle:thunder_duet_wave/use

execute \
    if score @s weapon.effect.chaotic_thunder matches 1.. \
    as @e[sort=arbitrary,distance=..6,type=!#minecraft:dummy_mob,type=!player] at @s run \
function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"armor",duration:100,base:-0.2,value:0.0,max:-0.2, id:"weapon.thunder_duet.passive.armor"}

scoreboard players set @n[scores={weapon.thunder_duet.target.marker=1..},distance=..8,type=!#minecraft:dummy_mob,type=!player] sys.skills_freeze 20

scoreboard players set @s sys.fall_immunity 40

tag @s remove weapon.thunder_duet.user