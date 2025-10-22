summon area_effect_cloud ~ ~ ~ {Tags:["monsters.sun_of_the_abyssal_eclipse.fx.main"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:41}
summon area_effect_cloud ~ ~1.5 ~ {Tags:["monsters.sun_of_the_abyssal_eclipse.fx_2.main","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}

execute as @e[tag=monsters.sun_of_the_abyssal_eclipse.fx_2.main,type=area_effect_cloud,tag=summon] at @s rotated 0 -90 run function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/use

playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 0.75 1

    # (I feel like my heart is burning)
# playsound minecraft:voice.epic_choir voice @a ~ ~1 ~ 0.5 1