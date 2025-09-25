# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/effect/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/effect/run ] >>> Damage and Effects
    ## Guide [ function armors:type/black_hole/effect/use ] >>> Summon Black Hole Boots Range Effect

# ===================================================
# @s = Enemy Entity

scoreboard players remove @e[type=!player,type=!#minecraft:dummy_mob,scores={armor.windriders_legplates.leggings.damage_delay=1..}] armor.windriders_legplates.leggings.damage_delay 1

execute as @e[type=!player,type=!#minecraft:dummy_mob] at @s unless score @s entity.dummy_mob matches 1.. facing entity @n[tag=armor.windriders_legplates.effect,distance=..4] feet rotated ~ 0 run function armors:type/windriders_legplates/effect/knockback/run

execute if entity @n[type=area_effect_cloud,tag=armor.windriders_legplates.effect] run schedule function armors:type/windriders_legplates/effect/knockback/main 1t