summon area_effect_cloud ~ ~ ~ {Tags:["monsters.sunfire_emissary.fx.main"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:41}
summon area_effect_cloud ~ ~1.5 ~ {Tags:["monsters.sunfire_emissary.fx_2.main","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}


execute \
    as @e[tag=monsters.sunfire_emissary.fx_2.main,type=area_effect_cloud,tag=summon] at @s rotated 0 -90 run \
function monsters:chapter_3/sunfire_emissary/death/fx_2/use

schedule function monsters:chapter_3/sunfire_emissary/death/fx/main 1t

playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 0.75 1