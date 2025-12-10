# ===================================================
# Swift Boots Main Function

    ## Guide [ function armors:type/swift_boots/use ] >>> Use Function

# ===================================================
# Detecting and triggering armor skills ; Execute the Function

execute unless items entity @s armor.feet *[minecraft:custom_data~{swift:1b} | custom_data~{swift:1}] run return 0
execute if score @s armor.boots.effect.actived matches 1.. run return 0

effect give @s speed 5 0 true

playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~1 ~ 1 1.25
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.25 0.5 0 20

scoreboard players set @s armor.boots.effect.actived 1