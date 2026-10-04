# ===================================================
# 劍 夜幕 被動 傷害 受擊 / sword nightfall passive damage on hurt

    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/hurt ] >>> 劍 夜幕 被動 傷害 受擊 / sword nightfall passive damage on hurt
    ## Guide [ function dmg_formula:weapons/type/sword/nightfall/passive/calculate ] >>> weapons 劍 夜幕 被動 計算 / weapons sword nightfall passive calculate
    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/2 ] >>> 劍 夜幕 被動 傷害 階段 2 / sword nightfall passive damage step 2

# ===================================================


# entity

execute \
    as @e[sort=arbitrary,type=!#minecraft:dummy_mob,type=!player,distance=2..4.5] run \
tag @s add dmger

execute \
    if entity @n[sort=arbitrary,tag=dmger,type=!#minecraft:dummy_mob,type=!player,distance=2..4.5] run \
effect give @s instant_health 1 0 true

scoreboard players set @s dmg_formula.atk_percentage 250
function dmg_formula:weapons/type/sword/nightfall/passive/calculate

# particle
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.5
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 force

# reset
scoreboard players reset @s weapon.nightfall.charge