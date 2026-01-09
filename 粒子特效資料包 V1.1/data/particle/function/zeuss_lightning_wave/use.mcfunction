
# main 
summon marker ~ ~ ~ {Tags:[fx.zeuss_lightning_wave.main]}

function particle:tunder_red/use {spread:3,duration:1}

# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.5
playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 0.75 2
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1.5
playsound minecraft:voice.attack_sound voice @a ~ ~ ~ 1 1
playsound minecraft:voice.ruins_of_the_end_hurt voice @a ~ ~ ~ 0.5 0.75

summon minecraft:item_display ~ ~5 ~ {start_interpolation:5, interpolation_duration:5,Tags:["particle.zeuss_lightning.lightning.end","summon"],billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:attribute_modifiers": [{amount: 0.0d, id: "minecraft:base_attack_damage", operation: "add_multiplied_base", slot: "mainhand", type: "minecraft:attack_damage"}], "minecraft:consumable": {animation: "spear", consume_seconds: 10000.0f, has_consume_particles: 0b}, "minecraft:custom_data": {rarity: "mythic", rc: 1b, type: "drop", weapon: "zeuss_lightning"}, "minecraft:item_model": "minecraft:drop/zeuss_lightning/0", "minecraft:item_name": {bold: 1b, color: "#CE0000", italic: 0b, translate: "weapon.zeuss_lightning"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "weapon.zeuss_lightning.type"}, "", {color: "blue", italic: 0b, translate: "weapon.zeuss_lightning.story.1"}, "", {extra: [{bold: 1b, color: "#FF0000", translate: "weapon.zeuss_lightning.skill"}, "  "], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.1"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.2"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.3"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.4"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.5"}], italic: 0b, text: ""}], "minecraft:tooltip_display": {hidden_components: ["minecraft:enchantments", "minecraft:attribute_modifiers"]}, "minecraft:tooltip_style": "minecraft:mythic"}, count: 37, id: "minecraft:breeze_rod"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 19.499527f, 1.0000014f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @n[tag=particle.zeuss_lightning.lightning.end,tag=summon,type=item_display] {start_interpolation: 2, interpolation_duration:2, transformation: {left_rotation: [-0.0017684037f, 1.03422964E-4f, -0.11320252f, 0.99357045f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0000014f, 20.000006f, 1.0000001f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @n[tag=particle.zeuss_lightning.lightning.end,tag=summon,type=item_display,distance=..20] duration 12
tag @n[tag=particle.zeuss_lightning.lightning.end,tag=summon,type=item_display,distance=..20] remove summon


particle minecraft:flash{color:[1.000,0.000,0.000,1.00]} ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
function particle:zeuss_lightning_wave/ground_ash/summon