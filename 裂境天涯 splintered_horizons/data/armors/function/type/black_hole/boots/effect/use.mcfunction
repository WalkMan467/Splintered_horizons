# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/effect/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/effect/run ] >>> Damage and Effects
    ## Guide [ function armors:type/black_hole/effect/use ] >>> Summon Black Hole Boots Range Effect

# ===================================================
# Summon Black Hole Boots Range Effect

execute positioned ~ ~-0.75 ~ run function particle:space_rupture/use
scoreboard players reset @s armor.black_hole.boots.effect

summon minecraft:area_effect_cloud ~ ~1.5 ~ {custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:20,Tags:["armor.black_hole.effect","summon"]}
scoreboard players operation @n[type=area_effect_cloud,tag=armor.black_hole.effect,tag=summon] armor.black_hole.boots.aj.id = @s player.id
tag @n[type=area_effect_cloud,tag=armor.black_hole.effect,tag=summon] remove summon

attribute @s movement_speed modifier remove armor.black_hole.animation.boots
attribute @s jump_strength modifier remove armor.black_hole.animation.boots

scoreboard players set @s armor.boots.effect.actived 1