# ===================================================
# 劍 夜幕 被動 傷害 階段 1 / sword nightfall passive damage step 1

    ## Guide [ function weapons:type/sword/nightfall/passive/dmg/1 ] >>> 劍 夜幕 被動 傷害 階段 1 / sword nightfall passive damage step 1
    ## Guide [ function weapons:type/sword/nightfall/passive/use ] >>> 劍 夜幕 被動 觸發 / sword nightfall passive activate

# ===================================================


# player

scoreboard players set @s weapon.effect.shadow 200

tag @s add weapon.nightfall.charger
effect give @s speed 1 2 true
scoreboard players reset @s weapon.nightfall.charge_timer

# particle
playsound block.beacon.activate master @a ~ ~ ~ 1 2