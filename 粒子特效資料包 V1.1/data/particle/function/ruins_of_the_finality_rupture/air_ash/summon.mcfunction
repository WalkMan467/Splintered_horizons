
summon minecraft:text_display ~ ~-2 ~ {Tags:[fx.rotf.aa,summon],alignment: "left", background: 0, billboard: "center", default_background: 0b, line_width: 0, see_through: 0b, shadow: 0b, teleport_duration: 20, text: {"text":"■","obfuscated":true,"bold":true,"color":"dark_red"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, -0.7071068f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.9999995f, 3.9999995f, 3.9999998f], translation: [-0.125f, 0.5229f, 0.0f]}}
spreadplayers ~ ~ 10 10 false @n[tag=summon]
tag @n[tag=summon] remove summon