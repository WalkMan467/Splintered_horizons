# ===================================================
# Symbiotic Blood Oath Main Function

    ## Guide [ function armors:type/symbiotic_blood_oath/use ] >>> Detect crouching trigger function
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/true ] >>> Multiple players around are performing this
    ## Guide [ function armors:type/symbiotic_blood_oath/multiple_players/false ] >>> There were no other players around executing this program
    ## Guide [ function armors:type/symbiotic_blood_oath/range ] >>> Range Fx (Self)
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/use ] >>> Passive Skills Use
    ## Guide [ function armors:type/symbiotic_blood_oath/passive/main ] >>> Passive Skills Loop
# ===================================================
# Detect Sneak ; Call Function

scoreboard players operation @s armor.animation_skills.chestplate.cd = @s armor.symbiotic_blood_oath.cd
scoreboard players set @s armor.animation_skills.return 1

execute \
    if score @s armor.symbiotic_blood_oath.cd matches 1.. run \
return 0

scoreboard players set @s armor.symbiotic_blood_oath.cd 30

playsound minecraft:entity.zombie.converted_to_drowned voice @a ~ ~1 ~ 1 0.875

scoreboard players reset #armor.symbiotic_blood_oath.fx particle

execute rotated ~ 0 run \
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