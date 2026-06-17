# ===================================================
# use

    ## Guide [ function armors:type/coiled_rock_helmet/use ] >>> use
    ## Guide [ function armors:type/armor_of_the_coiled_rock/use ] >>> use

# ===================================================

# Detect get runics ; Execute the Function


execute \
    if score @s armor.coiled_rock_helmet.cd matches 1.. run \
return 0


execute \
    unless items entity @s armor.head *[minecraft:custom_data~{id:"coiled_rock_helmet"}] run \
return 0

playsound minecraft:entity.warden.dig voice @a ~ ~1 ~ 1 2
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 1 2
particle dust_pillar{block_state:"minecraft:raw_copper_block"} ~ ~1 ~ 1 1 1 1 250 normal @a
particle dust_color_transition{from_color:[0.549,0.220,0.000],to_color:[0.220,0.086,0.000],scale:2} ~ ~1 ~ 0.5 0.5 0.5 1 20 normal

function cse:sys/status_effects/use {attribute:"armor_toughness",duration:100,base:2,value:0,max:2, id:"armor.coiled_rock_helmet",type:"add_value"}
function cse:sys/status_effects/use {attribute:"armor",duration:100,base:5,value:0,max:5, id:"armor.coiled_rock_helmet",type:"add_value"}

scoreboard players set @s armor.coiled_rock_helmet.cd 25