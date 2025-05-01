
# main 
summon marker ~ ~ ~ {Tags:[fx.rotf.main]}

# particle
summon minecraft:item_display ~ ~2 ~ {start_interpolation: 5, Glowing:1b,Tags:[fx.rotf.eye],billboard: "center", brightness: {block: 15, sky: 15}, glow_color_override: 16718848, interpolation_duration: 10, item: {components: {"minecraft:item_model": "minecraft:eye_of_the_end"}, count: 1, id: "minecraft:ender_eye"}, teleport_duration: 5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @n[tag=fx.rotf.eye,type=item_display] {interpolation_duration: 5, start_interpolation: 5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set @n[tag=fx.rotf.eye,type=item_display] duration 60

playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1
playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.25 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
particle minecraft:flash ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 200
function particle:ruins_of_the_finality_rupture/ground_ash/summon