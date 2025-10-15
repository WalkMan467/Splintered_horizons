execute if score @s cse.status_effects.bleeding matches 1.. run scoreboard players operation @s cse.status_effects.bleeding.tr = @s cse.status_effects.bleeding.tr_max

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
execute store result storage cse:status_effects bleeding.dot int 1 run scoreboard players get @s cse.status_effects.bleeding.dot

scoreboard players set #cse.status_effects.apply.dot? cse.global.main 1
function cse:status_effects/apply/bleeding/dmg with storage cse:status_effects bleeding

execute if score @s cse.status_effects.bleeding matches 1.. run return 0

function cse:status_effects/apply/bleeding/clear

tag @s remove cse.status.effect.bleeding