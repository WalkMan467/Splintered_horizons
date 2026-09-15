# ===================================================

# use



    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> use

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> true

    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> false

    ## Guide [ function armors:type/symbiotic_blood_oath/effect/main ] >>> effect main



# ===================================================



# Detect Sneak ; Call Function



# 動畫計時器仍然是倒數制，所以要把絕對時間換算回剩餘 tick
scoreboard players operation @s armor.animation_skills.chestplate.cd = @s armor.symbiotic_blood_oath.cd
scoreboard players operation @s armor.animation_skills.chestplate.cd -= #gametime global.main

scoreboard players set @s armor.animation_skills.return 1



# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.symbiotic_blood_oath.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.symbiotic_blood_oath.cd", cd:30}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.symbiotic_blood_oath.cd run \
return 0



function armors:cd {id:"armor.symbiotic_blood_oath.cd", cd:30}



playsound minecraft:entity.zombie.converted_to_drowned voice @a ~ ~1 ~ 1 0.875



scoreboard players reset #armor.symbiotic_blood_oath.fx particle



execute \
    rotated ~ 0 run \
function armors:type/symbiotic_blood_oath/range



tag @s add armor.symbiotic_blood_oath.user





execute \
    store result storage temp symbiotic_blood_oath.player.health float 0.25 run \
scoreboard players get @s player.health





execute \
    if entity @p[sort=arbitrary,distance=..6,tag=!armor.symbiotic_blood_oath.user] run \
function armors:type/symbiotic_blood_oath/multiple_players/true with storage temp symbiotic_blood_oath.player



execute \
    unless entity @p[sort=arbitrary,distance=..6,tag=!armor.symbiotic_blood_oath.user] run \
function armors:type/symbiotic_blood_oath/multiple_players/false with storage temp symbiotic_blood_oath.player



tag @s remove armor.symbiotic_blood_oath.user

data remove storage temp symbiotic_blood_oath



scoreboard players set @s armor.chestplate.effect.actived 2