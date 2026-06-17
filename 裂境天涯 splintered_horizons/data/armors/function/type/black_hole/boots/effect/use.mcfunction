# ===================================================
# use

    ## Guide [ function armors:type/black_hole/boots/effect/use ] >>> use
    ## Guide [ function armors:loop ] >>> armors:loop

# ===================================================

# Summon Black Hole Boots Range Effect


execute \
    positioned ~ ~0.75 ~ run \
function particle:space_rupture/use
scoreboard players reset @s armor.black_hole.boots.effect

summon minecraft:area_effect_cloud ~ ~1.5 ~ {custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:20,Tags:["armor.black_hole.effect","summon"]}
scoreboard players operation @n[distance=0..,tag=armor.black_hole.effect,tag=summon,type=area_effect_cloud] armor.black_hole.boots.aj.id = @s player.id
tag @n[tag=armor.black_hole.effect,tag=summon,distance=0..,type=area_effect_cloud] remove summon

attribute @s movement_speed modifier remove armor.black_hole.animation.boots
attribute @s jump_strength modifier remove armor.black_hole.animation.boots

scoreboard players set @s armor.boots.effect.actived 5