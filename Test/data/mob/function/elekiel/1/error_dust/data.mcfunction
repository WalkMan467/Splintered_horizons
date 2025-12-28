
data merge entity @s {Tags:["mob.elekiel.1.error_dust","mob.elekiel.1.display","mob.elekiel.display"], alignment: "center", background: 0, billboard: "center", brightness: {block: 15, sky: 0}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, teleport_duration: 2, text: {font: "mob:elekiel", text: "\u0001"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [-0.05f, -0.225f, 0.0f]}, view_range: 2.0f}

function mob:elekiel/1/error_dust/2


execute \
    store result score @s mob.duration run \
random value -5..15


execute \
    store result entity @s Rotation[0] float 0.1 run \
random value 0..3600

execute \
    store result entity @s Rotation[1] float 0.1 run \
random value -300..300