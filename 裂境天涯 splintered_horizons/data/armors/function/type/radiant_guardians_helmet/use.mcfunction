# ===================================================
# Radiant Guardians Helmet Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Take Off
    ## Guide [ function armors:type/radiant_guardians_helmet/add_torch ] >>> Add Torch
    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> Function Guide
    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/effect/add_torch ] >>> Passive Auto Place Torch

# ===================================================
# Detect Sneak ; Play Animation Function

scoreboard players operation @s armor.animation_skills.helmet.cd = @s armor.radiant_guardians_helmet.cd
scoreboard players set @s armor.animation_skills.return 1
execute if score @s armor.radiant_guardians_helmet.cd matches 1.. run return 0

execute unless score @s weapon.effect.resplendence matches 1.. run scoreboard players set @s armor.radiant_guardians_helmet.cd 10

playsound minecraft:block.end_portal_frame.fill voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.75
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 40 normal @a

execute as @e[distance=..4,type=!#minecraft:dummy_mob,type=!player] at @s run function cse:status_effects/apply/weakness/use {duration:100,base:0.08, value:0.08,max:0.4}

function armors:type/radiant_guardians_helmet/add_torch

scoreboard players set @s armor.helmet.effect.actived 2