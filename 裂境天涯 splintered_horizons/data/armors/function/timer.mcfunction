# ===================================================
# timer

    ## Guide [ function armors:timer ] >>> timer
    ## Guide [ function armors:loop ] >>> armors:loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> armors:reload rpg armor effect

# ===================================================

scoreboard players remove @a[scores={armor.black_hole.boots.effect=1..}] armor.black_hole.boots.effect 1
scoreboard players remove @a[scores={armor.radiant_guardians_helmet.effect.cd=1..}] armor.radiant_guardians_helmet.effect.cd 1
scoreboard players remove @a[scores={armor.resilient.cd=1..}] armor.resilient.cd 1
scoreboard players remove @a[scores={armor.enchantment.shockwave.timer=1..}] armor.enchantment.shockwave.timer 1
scoreboard players remove @a[scores={armor.resilient.effect.timer=0..}] armor.resilient.effect.timer 1

scoreboard players remove @a[scores={armor.helmet.effect.actived=1..}] armor.helmet.effect.actived 1
scoreboard players remove @a[scores={armor.chestplate.effect.actived=1..}] armor.chestplate.effect.actived 1
scoreboard players remove @a[scores={armor.leggings.effect.actived=1..}] armor.leggings.effect.actived 1
scoreboard players remove @a[scores={armor.boots.effect.actived=1..}] armor.boots.effect.actived 1

scoreboard players remove @a[scores={armor.animation_skills.helmet.cd=1..}] armor.animation_skills.helmet.cd 1
scoreboard players remove @a[scores={armor.animation_skills.chestplate.cd=1..}] armor.animation_skills.chestplate.cd 1
scoreboard players remove @a[scores={armor.animation_skills.legs.cd=1..}] armor.animation_skills.legs.cd 1
scoreboard players remove @a[scores={armor.animation_skills.feet.cd=1..}] armor.animation_skills.feet.cd 1

scoreboard players set @a armor.animation_skills.return 0