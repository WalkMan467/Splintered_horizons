kill @n[type=item,nbt={Item:{components: {"minecraft:custom_data": {monument:1b}}}}]

summon minecraft:item_display ~ ~ ~ {UUID:[I; 13,2,1,1],Tags:["system.monument_point.sword","system.monument_point.main","system.monument_point.water"],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:attribute_modifiers": {modifiers: [{amount: 6.0d, id: "minecraft:base_attack_damage", operation: "add_value", slot: "mainhand", type: "minecraft:attack_damage"}, {amount: -2.3d, id: "minecraft:base_attack_speed", operation: "add_value", slot: "mainhand", type: "minecraft:attack_speed"}]}, "minecraft:custom_data": {type: "sword", ultimate: 1b, weapon: "light_of_water_mirror"}, "minecraft:custom_model_data": {flags: [B; 1B]}, "minecraft:item_model": "minecraft:sword/light_of_water_mirror/1", "minecraft:item_name": '{"bold":true,"color":"#0066FF","italic":false,"translate":"weapon.light_of_water_mirror"}', "minecraft:lore": ['{"color":"dark_gray","italic":false,"translate":"weapon.light_of_water_mirror.type"}', '""', '{"color":"blue","italic":false,"translate":"weapon.light_of_water_mirror.story.1"}', '{"color":"blue","italic":false,"translate":"weapon.light_of_water_mirror.story.2"}', '{"color":"blue","italic":false,"translate":"weapon.light_of_water_mirror.story.3"}', '{"color":"blue","italic":false,"translate":"weapon.light_of_water_mirror.story.4"}'], "minecraft:unbreakable": {}}, count: 1, id: "minecraft:stone_sword"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}

playsound minecraft:entity.ender_eye.death voice @a ^ ^ ^-1 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ^ ^ ^-1 1 0.5
playsound minecraft:entity.firework_rocket.blast voice @a ^ ^ ^-1 1 1
playsound minecraft:ui.toast.challenge_complete voice @a ^ ^ ^-1 1 1

particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.25 20 normal @a
particle sonic_boom ^ ^ ^-1 0 0 0 1 1 normal @a

title @a title {"translate":"tips.area_1.title","color": "blue"}
title @a subtitle {"translate":"tips.area_1.subtitle","color": "blue"}
title @a times 20 60 20