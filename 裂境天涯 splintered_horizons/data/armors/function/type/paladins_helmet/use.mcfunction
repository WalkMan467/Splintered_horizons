# ===================================================

# use



    ## Guide [ function armors:type/paladins_helmet/use ] >>> use



# ===================================================



# This Function: use

execute \
    if score @s armor.paladins_helmet.cd matches 1.. run \
return 0

execute \
    unless items entity @s armor.head *[minecraft:custom_data~{id:"paladins_helmet"}] run \
return 0

tag @s add armor.paladins_helmet.use

scoreboard players set @s armor.paladins_helmet.cd 3