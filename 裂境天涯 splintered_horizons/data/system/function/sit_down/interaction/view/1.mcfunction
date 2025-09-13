
summon minecraft:text_display ~ ~-0.5 ~ {teleport_duration:5,Tags:["system.sit_down.text.spawn","system.sit_down","system.sit_down.text"],alignment: "center", background: 16770019, billboard: "vertical", brightness: {block: 15, sky: 15}, default_background: 0b, fall_distance: 0.0d, line_width: 200, see_through: 0b, shadow: 0b, text: {font: "minecraft:icon", text: ""}, text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [-0.1f, -0.25f, 0.0f]}}

playsound minecraft:entity.goat.long_jump master @a ~ ~ ~ 0.2 1.5

tp @n[tag=system.sit_down.text.spawn] ~ ~0.5 ~
tag @n[tag=system.sit_down.text.spawn] remove system.sit_down.text.spawn

tag @s add active