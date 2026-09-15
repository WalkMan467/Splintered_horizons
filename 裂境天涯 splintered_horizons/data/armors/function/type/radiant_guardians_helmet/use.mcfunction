# ===================================================

# use



    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> use

    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> eqipment

    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> take off



# ===================================================



# Detect Sneak ; Play Animation Function



# 動畫計時器仍然是倒數制，所以要把絕對時間換算回剩餘 tick
scoreboard players operation @s armor.animation_skills.helmet.cd = @s armor.radiant_guardians_helmet.cd
scoreboard players operation @s armor.animation_skills.helmet.cd -= #gametime global.main

scoreboard players set @s armor.animation_skills.return 1



# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.radiant_guardians_helmet.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.radiant_guardians_helmet.cd", cd:10}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.radiant_guardians_helmet.cd run \
return 0



execute \
    unless items entity @s armor.head *[minecraft:custom_data~{id:"radiant_guardians_helmet"}] run \
return 0



execute \
    unless score @s weapon.effect.resplendence matches 1.. run \
function armors:cd {id:"armor.radiant_guardians_helmet.cd", cd:10}



playsound minecraft:block.end_portal_frame.fill voice @a ~ ~1 ~ 1 0.5

playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.75

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 40 normal @a



execute \
    as @e[sort=arbitrary,distance=..4,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] run \
function sys:dummy_mob/interface



execute \
    as @e[distance=..4,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] at @s run \
function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"movement_speed",duration:100,base:-0.08,value:-0.08,max:0.4, id:"radiant_guardians_helmet"}



function armors:type/radiant_guardians_helmet/add_torch



tag @e[distance=..4,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface



scoreboard players set @s armor.helmet.effect.actived 2