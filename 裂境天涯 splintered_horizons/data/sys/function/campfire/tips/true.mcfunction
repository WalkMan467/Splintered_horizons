execute \
    unless score @s sys.campfire.tips.temp matches 0 run \
return 0

scoreboard players set @s sys.campfire.tips.temp 1

execute \
    positioned ~ ~1.5 ~ run \
kill @e[sort=arbitrary,distance=..1,type=text_display]

summon minecraft:text_display ~ ~1.5 ~ {Tags:["sys.campfire.text","summon"],alignment: "center", background: 0, billboard: "vertical", brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {font: "minecraft:icon", text: ""}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [-0.1f, -0.25f, 0.0f]}}