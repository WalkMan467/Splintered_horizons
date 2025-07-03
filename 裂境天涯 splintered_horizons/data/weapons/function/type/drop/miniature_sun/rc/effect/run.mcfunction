summon area_effect_cloud ~ ~0.5 ~ {Tags:["weapon.miniature_sun.main","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:100}
summon area_effect_cloud ~ ~3 ~ {Tags:["weapon.miniature_sun.main.fx","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:100}

function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide

playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.75


kill @s