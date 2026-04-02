execute \
    if score @s player.setting.recover_lost_objective_items.return matches 1 run \
function players:setting/recover_lost_objective_items/objective_items/aquilumera

execute \
    if score @s player.setting.recover_lost_objective_items.return matches 2 run \
function players:setting/recover_lost_objective_items/objective_items/silvaverdis

execute \
    if score @s player.setting.recover_lost_objective_items.return matches 3 run \
function players:setting/recover_lost_objective_items/objective_items/pyrosolis

scoreboard players set @a player.setting.recover_lost_objective_items.return 0
scoreboard players enable @a player.setting.recover_lost_objective_items.return