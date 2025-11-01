execute positioned ~ ~1 ~ run function particle:tunder_red/use {spread:2,duration:5}
execute positioned ~ ~2 ~ run function particle:tunder_red/use {spread:3,duration:5}
execute positioned ~ ~1 ~ run function particle:tunder_red/use {spread:2,duration:5}
scoreboard players set #particle.sound_wave.color particle 2
execute positioned ~ ~1 ~ run function particle:sound_wave/ground_ash/summon

particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0 0 0 0 2 normal @a
particle dust{color:[1.000,0.000,0.000],scale:1.5} ~ ~1 ~ 2 2 2 0 20 normal @a
particle dust{color:[1.000,0.000,0.000],scale:2.0} ~ ~0.5 ~ 1 0 1 0 40 normal @a

playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~1 ~ 1 2
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1.5
playsound minecraft:voice.attack_sound voice @a ~ ~ ~ 1 1
playsound minecraft:voice.attack_sound voice @a ~ ~ ~ 1 1
playsound minecraft:voice.ruins_of_the_end_hurt voice @a ~ ~ ~ 1 0.75

execute as @e[type=!#minecraft:dummy_mob,type=!player,distance=..8] run damage @s 5 player_attack by @p

summon minecraft:item_display ~ ~5 ~ {start_interpolation:5, interpolation_duration:5, Passengers:[{data:{aj_kill:{name:""}},id:"minecraft:marker",Tags:["main.duration.timer","summon"]}],Tags:["weapon.zeuss_lightning.lightning.end","summon"],billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:attribute_modifiers": [{amount: 0.0d, id: "minecraft:base_attack_damage", operation: "add_multiplied_base", slot: "mainhand", type: "minecraft:attack_damage"}], "minecraft:consumable": {animation: "spear", consume_seconds: 10000.0f, has_consume_particles: 0b}, "minecraft:custom_data": {rarity: "mythic", rc: 1b, type: "drop", weapon: "zeuss_lightning"}, "minecraft:item_model": "minecraft:drop/zeuss_lightning/0", "minecraft:item_name": {bold: 1b, color: "#CE0000", italic: 0b, translate: "weapon.zeuss_lightning"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "weapon.zeuss_lightning.type"}, "", {color: "blue", italic: 0b, translate: "weapon.zeuss_lightning.story.1"}, "", {extra: [{bold: 1b, color: "#FF0000", translate: "weapon.zeuss_lightning.skill"}, "  "], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.1"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.2"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.3"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.4"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.5"}], italic: 0b, text: ""}], "minecraft:tooltip_display": {hidden_components: ["minecraft:enchantments", "minecraft:attribute_modifiers"]}, "minecraft:tooltip_style": "minecraft:mythic"}, count: 37, id: "minecraft:breeze_rod"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 10.000006f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @n[tag=weapon.zeuss_lightning.lightning.end,tag=summon,type=item_display] {start_interpolation:5, interpolation_duration:5, transformation: {left_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [10.0f, 10.000006f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute as @n[tag=weapon.zeuss_lightning.lightning.end,tag=summon,type=item_display,distance=..5] on passengers run scoreboard players set @s[tag=main.duration.timer,tag=summon,type=marker] duration 8
execute as @n[tag=weapon.zeuss_lightning.lightning.end,tag=summon,type=item_display,distance=..5] on passengers run tag @s[tag=main.duration.timer,tag=summon,type=marker] remove summon

kill @s