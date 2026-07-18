# ===================================================

# Enter the Void


    ## Guide [ function players:void_protection/in ] >>> Enter the Void

    ## Guide [ function players:void_protection/main ] >>> Void Protection Detect Function

    ## Guide [ function players:void_protection/out ] >>> Leave the Void

    ## Guide [ function players:void_protection/introduction ] >>> Introduction

    ## Guide [ function players:void_protection/rollback/use ] >>> Rollback

    ## Guide [ function players:void_protection/rollback/use.guide ] >>> Rollback teleport marco guide

    ## Guide [ function players:void_protection/rollback/update ] >>> Update Player Rollback Position

    ## Guide [ function players:void_protection/rollback/update.guide ] >>> Rollback Position guide

    ## Guide [ function players:void_protection/rollback/retrieve_data ] >>> Retrieved Player Rollback Position

# ===================================================

# Enter the Void

# Remove Enter Detected Adv
advancement revoke @s only players:void_protection/out_void

# Exclude: Weapon & Armor special skill animation
execute \
    if entity @s[gamemode=spectator,tag=animation] run \
return 0

# Rollback to the point
function players:void_protection/rollback/use

# Void Immunity

execute \
    if items entity @s armor.head * run \
    return run \
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":1},add:false}

execute \
    if items entity @s armor.chest * run \
    return run \
item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":1},add:false}

execute \
    if items entity @s armor.legs * run \
    return run \
item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":1},add:false}

execute \
    if items entity @s armor.feet * run \
    return run \
item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"players:void_protection/void_immunity":1},add:false}

item replace entity @s armor.chest with music_disc_11[equippable={slot:"chest",asset_id:"air"},enchantment_glint_override=false,enchantments={"players:void_protection/void_immunity":1,"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={void_immunity:true},item_model="air",item_name=""] 1