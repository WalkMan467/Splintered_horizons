# ===================================================

# Rollback


    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================


execute \
    if entity @s[gamemode=creative] run \
return 0

execute \
    if entity @s[gamemode=spectator] run \
return 0

scoreboard players set @s sys.fall_immunity 5
scoreboard players set @s sys.exclude_display_world_area_title 5

title @s times 0 20 20
title @s title {text:"\uE000","font":"minecraft:screen","color":"white",shadow_color:0}
title @s subtitle ""

playsound minecraft:entity.player.big_fall voice @a ~ ~1 ~ 1 1
particle minecraft:dust_pillar{block_state:cobbled_deepslate} ~ ~1 ~ 0.75 0.5 0.75 0.5 50 normal @a

# Retrieved Player Rollback Position
function players:void_protection/rollback/retrieve_data

# Using a macro to execute a rollback
function players:void_protection/rollback/use.guide with storage player.data void_protection.rollback

damage @s 8 fall
effect give @s hunger 1 255 true