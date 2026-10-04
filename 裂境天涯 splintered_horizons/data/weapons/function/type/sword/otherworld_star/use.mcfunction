# ===================================================
# 劍 異界晨星 觸發 / sword otherworld star activate

    ## Guide [ function weapons:type/sword/otherworld_star/use ] >>> 劍 異界晨星 觸發 / sword otherworld star activate

# ===================================================


execute \
    if score @s weapon.otherworld_star.timer matches 1.. run \
scoreboard players add @s weapon.otherworld_star.effect 1

execute \
    if score @s weapon.otherworld_star.cd matches 1.. run \
return 0

scoreboard players set @s weapon.otherworld_star.cd 61
scoreboard players set @s weapon.otherworld_star.timer 60