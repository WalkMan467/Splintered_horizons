# ===================================================
# 風力劍 wind 召喚 / wind sword wind summon

    ## Guide [ function weapons:type/sword/wind_sword/wind/summon ] >>> 風力劍 wind 召喚 / wind sword wind summon
    ## Guide [ function weapons:type/sword/wind_sword/main ] >>> 風力劍 主迴圈 / wind sword loop

# ===================================================


# wind

execute anchored eyes run \
summon item_display ^ ^ ^ {Tags:[wind_sword.wind,summon],item:{id:"minecraft:barrier",count:1,components:{"item_model":"air"}},item_display:"head",teleport_duration:1}
data modify entity @n[distance=0..,tag=summon,limit=1,type=item_display] Rotation set from entity @s Rotation
scoreboard players set @n[tag=summon,limit=1,distance=0..,type=item_display] duration 20

scoreboard players operation @n[tag=summon,limit=1,distance=0..,type=item_display] player.id = @s player.id

# particle
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 1

# reset
tag @n[tag=summon,distance=0..,type=item_display] remove summon