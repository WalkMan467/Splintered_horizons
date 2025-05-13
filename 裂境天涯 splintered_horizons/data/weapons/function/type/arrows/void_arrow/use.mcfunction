summon area_effect_cloud ~ ~1 ~ {Tags:["entity.void_arrow.effect"],Duration:1,Particle:{type:"block",block_state:"air"},Radius:0}
execute at @e[tag=entity.void_arrow.effect] run function weapons:type/arrows/void_arrow/effect/guide

advancement revoke @a only weapons:arrows/void_arrow