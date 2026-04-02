advancement revoke @s only weapons:type/axe/thunder_duet/passive/use

scoreboard players set @s weapon.thunder_duet.cd 0
scoreboard players set @s weapon.thunder_duet.passive.cd 100

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 8000
scoreboard players set $z player_motion.api.launch 0

function player_motion:api/launch_xyz

effect clear @n[tag=weapon.thunder_duet.target,distance=..8,type=!#cse:dummy_mob,type=!player] glowing
tag @n[tag=weapon.thunder_duet.target,distance=..8,type=!#cse:dummy_mob,type=!player] remove weapon.thunder_duet.target

scoreboard players set @s sys.fall_immunity 40