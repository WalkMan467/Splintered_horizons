# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.5
playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 1

playsound minecraft:voice.elekiel_phase_2.1.tunder.1 voice @a ~ ~1 ~ 1 0.5
playsound minecraft:voice.elekiel_phase_2.1.tunder.1 voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:voice.kill_sword_shoot_end voice @a ~ ~1 ~ 0.5 0.75

playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5
playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5
playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5
playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5
playsound minecraft:item.spyglass.use voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.dig voice @a ~ ~1 ~ 0.75 2

particle minecraft:flash{color:[1.000,0.835,0.000,0.5]} ~ ~ ~ 0 0 0 1 1
particle minecraft:wax_on ~ ~1 ~ 0 0 0 30 40 normal @a
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 20 normal @a

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1


particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 10 normal @a
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 2 90 normal @a[scores={main.light_sensitivity=0}]

particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 10 normal @a
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 10 90 normal @a[scores={main.light_sensitivity=0}] 

summon minecraft:item_display ~ ~5 ~ {start_interpolation:5, interpolation_duration:5,Tags:["particle.time_space_wave.lightning.end","summon"],billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:attribute_modifiers": [{amount: 0.0d, id: "minecraft:base_attack_damage", operation: "add_multiplied_base", slot: "mainhand", type: "minecraft:attack_damage"}], "minecraft:consumable": {animation: "spear", consume_seconds: 10000.0f, has_consume_particles: 0b}, "minecraft:custom_data": {rarity: "mythic", rc: 1b, type: "drop", weapon: "zeuss_lightning"}, "minecraft:item_model": "fx/spacetime_collapse/tunder", "minecraft:item_name": {bold: 1b, color: "#CE0000", italic: 0b, translate: "weapon.zeuss_lightning"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "weapon.zeuss_lightning.type"}, "", {color: "blue", italic: 0b, translate: "weapon.zeuss_lightning.story.1"}, "", {extra: [{bold: 1b, color: "#FF0000", translate: "weapon.zeuss_lightning.skill"}, "  "], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.1"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.2"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.3"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.4"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.5"}], italic: 0b, text: ""}], "minecraft:tooltip_display": {hidden_components: ["minecraft:enchantments", "minecraft:attribute_modifiers"]}, "minecraft:tooltip_style": "minecraft:mythic"}, count: 37, id: "minecraft:breeze_rod"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 19.499527f, 1.0000014f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @n[sort=arbitrary,distance=..10,tag=particle.time_space_wave.lightning.end,tag=summon,type=item_display] {start_interpolation: 2, interpolation_duration:2, transformation: {left_rotation: [-0.0017684037f, 1.03422964E-4f, -0.11320252f, 0.99357045f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0000014f, 20.000006f, 1.0000001f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @n[sort=arbitrary,distance=..10,tag=particle.time_space_wave.lightning.end,tag=summon,type=item_display] duration 8
tag @n[sort=arbitrary,distance=..10,tag=particle.time_space_wave.lightning.end,tag=summon,type=item_display] remove summon

summon marker ~ ~ ~ {Tags:["fx.time_space_wave.main","fx.time_space_wave","summon"]}

execute \
    as @n[sort=arbitrary,distance=..1,tag=summon,tag=fx.time_space_wave.main,type=marker] at @s \
    rotated ~ 0 run \
function particle:time_space_wave/ground_ash/summon

# 音波場域
schedule function particle:time_space_wave/main 1t