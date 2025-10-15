# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use

# ===================================================
# Detect Sneak ; Play Animation Function

execute if score @s armor.radiant_guardians_helmet.cd matches 1.. run return 0

execute unless score @s weapon.effect.resplendence matches 1.. run scoreboard players set @s armor.radiant_guardians_helmet.cd 10
playsound minecraft:block.end_portal_frame.fill voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.75
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 40 normal @a

execute as @e[distance=..4,type=!#minecraft:dummy_mob,type=!player] at @s run function cse:status_effects/apply/weakness/use {duration:100,base:0.08, value:0.08,max:0.4}

function armors:type/radiant_guardians_helmet/add_torch

scoreboard players set @s armor.helmet.effect.actived 2