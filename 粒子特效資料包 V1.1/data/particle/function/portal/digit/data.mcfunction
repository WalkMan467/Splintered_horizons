
data merge entity @s {Tags:["mob.elekiel.2.digit","mob.elekiel.2.display","mob.elekiel.display"], alignment: "center", billboard:"vertical", background: 0, brightness: {block: 15, sky: 0}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, text: {font: "mob:elekiel", text: "\u0201"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f], translation: [-0.1f, -0.12f, 0.0f]}, view_range: 2.0f, teleport_duration:5}

data modify storage mob:temp temp set value {scale: [2.0f, 2.0f, 1.0f], translation: [-0.1f, -0.12f, 0.0f]}

execute store result score #scale mob.main run \
random value 20..80

execute store result storage mob:temp temp.scale[1] float 0.1 run \
scoreboard players get #scale mob.main

execute store result storage mob:temp temp.translation[1] float -0.006 run \
scoreboard players get #scale mob.main
data modify entity @s transformation.scale set from storage mob:temp temp.scale
data modify entity @s transformation.translation set from storage mob:temp temp.translation
data remove storage mob:temp temp


execute store result score @s mob.duration run \
random value -5..-2


execute store result score #x1 mob.main run \
data get entity @s Pos[0] 10

execute store result score #y1 mob.main run \
data get entity @s Pos[1] 10

execute store result score #z1 mob.main run \
data get entity @s Pos[2] 10


execute store result score #x2 mob.main run \
random value -20..20

execute store result score #y2 mob.main run \
random value -10..-5

execute store result score #z2 mob.main run \
random value -20..20


execute store result entity @s Pos[0] double 0.1 run \
scoreboard players operation #x1 mob.main += #x2 mob.main

execute store result entity @s Pos[1] double 0.1 run \
scoreboard players operation #y1 mob.main += #y2 mob.main

execute store result entity @s Pos[2] double 0.1 run \
scoreboard players operation #z1 mob.main += #z2 mob.main