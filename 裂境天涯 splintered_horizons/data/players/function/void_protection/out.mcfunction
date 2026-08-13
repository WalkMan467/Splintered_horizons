# ===================================================

# Leave the Void


    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================

# Leave the Void

# Remove Leave Detected Adv
advancement revoke @s only players:void_protection/in_void

# Exclude: Weapon & Armor special skill animation, Spectator
execute \
    if entity @s[gamemode=spectator,tag=animation] run \
return 0

# Void Immunity

execute \
    if items entity @s armor.chest *[custom_data~{void_immunity:true}] run \
    return run \
clear @s *[custom_data~{void_immunity:true}]

execute \
    if items entity @s armor.head * run \
    return run \
item modify entity @s armor.head {type:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":0},add:false}

execute \
    if items entity @s armor.chest * run \
    return run \
item modify entity @s armor.chest {type:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":0},add:false}

execute \
    if items entity @s armor.legs * run \
    return run \
item modify entity @s armor.legs {type:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":0},add:false}

execute \
    if items entity @s armor.feet * run \
    return run \
item modify entity @s armor.feet {type:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":0},add:false}