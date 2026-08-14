# ===================================================
# 劍 夜幕 被動 title / sword nightfall passive title

    ## Guide [ function weapons:type/sword/nightfall/passive/title ] >>> 劍 夜幕 被動 title / sword nightfall passive title
    ## Guide [ function weapons:type/sword/nightfall/passive/use ] >>> 劍 夜幕 被動 觸發 / sword nightfall passive activate

# ===================================================


execute \
    unless score @s weapon.nightfall.charge matches 5 run \
scoreboard players set @s player.actionbar.weapon.nightfall 10

execute \
    if score @s weapon.nightfall.charge matches 5 run \
scoreboard players set @s player.actionbar.weapon.nightfall 20

playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0

execute \
    if score @s weapon.nightfall.charge matches 4 run \
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 2