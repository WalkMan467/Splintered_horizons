execute if score @s cse.status_effects.bleeding matches 0.. run scoreboard players remove @s cse.status_effects.bleeding 1
execute if score @s cse.status_effects.bleeding.tr matches 0.. run scoreboard players remove @s cse.status_effects.bleeding.tr 1

execute if score @s cse.status_effects.bleeding.tr matches 0 run function cse:status_effects/apply/bleeding/tr_run

execute if score @s cse.status_effects.bleeding matches 0.. if score @s cse.detect.player.hurt_time matches 9 run function cse:status_effects/apply/bleeding/get_taken_dmg