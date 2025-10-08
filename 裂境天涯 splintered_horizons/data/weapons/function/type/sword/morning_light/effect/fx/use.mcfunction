summon minecraft:item_display ~ ~4 ~ {Glowing:1b,glow_color_override:16764416,Tags:["summon","weapon.morning_light"],start_interpolation:0,teleport_duration:2,billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:sword/morning_light/2"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.9238795f, 0.38268346f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}}

execute as @e[type=item_display,limit=1,tag=weapon.morning_light,tag=summon] at @s run tp @s ~ ~-3 ~ 0 0
execute as @e[type=item_display,limit=1,tag=weapon.morning_light,tag=summon] run scoreboard players set @s duration 5
execute as @e[type=item_display,limit=1,tag=weapon.morning_light,tag=summon] run tag @s remove summon

playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:item.shield.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 1.25
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1.5

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 0.5 1.5

particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 1
particle minecraft:wax_on ~ ~1 ~ 0 0 0 30 20 normal @a
particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 50 normal @a