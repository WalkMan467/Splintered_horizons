scoreboard players set @s player.click.interval 5
clear @s *[custom_data~{type:"drop",weapon:"zeuss_lightning"}] 1


summon minecraft:item_display ~ ~1 ~ {Tags:["summon","weapon.zeuss_lightning.lightning"],brightness: {block: 15, sky: 15}, glow_color_override: 16711680, interpolation_duration: 1, item: {components: {"minecraft:attribute_modifiers": [{amount: 0.0d, id: "minecraft:base_attack_damage", operation: "add_multiplied_base", slot: "mainhand", type: "minecraft:attack_damage"}], "minecraft:consumable": {animation: "spear", consume_seconds: 10000.0f, has_consume_particles: 0b}, "minecraft:custom_data": {rarity: "mythic", rc: 1b, type: "drop", weapon: "zeuss_lightning"}, "minecraft:item_model": "minecraft:drop/zeuss_lightning/0", "minecraft:item_name": {bold: 1b, color: "#CE0000", italic: 0b, translate: "weapon.zeuss_lightning"}, "minecraft:lore": [{color: "dark_gray", italic: 0b, translate: "weapon.zeuss_lightning.type"}, "", {color: "blue", italic: 0b, translate: "weapon.zeuss_lightning.story.1"}, "", {extra: [{bold: 1b, color: "#FF0000", translate: "weapon.zeuss_lightning.skill"}, "  "], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.1"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.2"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.3"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.4"}], italic: 0b, text: ""}, {extra: [{color: "#C50202", translate: "weapon.zeuss_lightning.skill.5"}], italic: 0b, text: ""}], "minecraft:tooltip_display": {hidden_components: ["minecraft:enchantments", "minecraft:attribute_modifiers"]}, "minecraft:tooltip_style": "minecraft:mythic"}, count: 63, id: "minecraft:breeze_rod"}, teleport_duration: 1, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.74999994f, 3.9999995f, 0.7499999f], translation: [0.0f, 0.0f, 0.0f]}}


execute \
    as @n[tag=weapon.zeuss_lightning.lightning,tag=summon,type=item_display,distance=..3] run \
scoreboard players set @s[tag=main.duration.timer,tag=summon,type=marker] duration 60


execute \
    as @n[tag=weapon.zeuss_lightning.lightning,tag=summon,type=item_display] at @s rotated \
    as @p run \
tp @s ~ ~ ~ ~ ~

tag @n[tag=weapon.zeuss_lightning.lightning,tag=summon,type=item_display] remove summon