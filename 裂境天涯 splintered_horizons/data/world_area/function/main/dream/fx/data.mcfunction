data merge entity @s {Tags:["world_area.main.dream.fx","summon"], alignment: "center", background: 0, billboard: "center", brightness: {block: 15, sky: 0}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b,text_opacity:255, shadow_strength: 0.0f, teleport_duration: 10, text: {font: "minecraft:particle", text: "\uE001"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [-0.05f, -0.225f, 0.0f]}, view_range: 2.0f}

# Hide
scoreboard players display name @s world_area.main.dream.fx.age ""
scoreboard players display numberformat @s world_area.main.dream.fx.age fixed ""

rotate @s facing entity @p[sort=arbitrary,distance=..3,tag=world_area.main.dream.fx.user]
rotate @s ~ 0

function world_area:main/dream/fx/rdm_font


execute \
    store result score @s duration run \
random value 5..15