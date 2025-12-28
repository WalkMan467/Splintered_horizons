
data merge entity @s {Tags:["mob.elekiel.1.eye","mob.elekiel.1.display","mob.elekiel.display"], brightness: {block: 15, sky: 0}, item: {components: {"minecraft:item_model": "mob:elekiel/eye"}, count: 1, id: "minecraft:paper"}, shadow_strength: 0.0f, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.25f, 0.25f, 0.25f], translation: [0.0f, 0.0f, 0.0f]}, teleport_duration:5, view_range: 2.0f}


execute store result score @s mob.duration run \
random value -10..9

execute store result entity @s Rotation[0] float 0.1 run \
random value 0..3600


execute store result score #x1 mob.main run \
data get entity @s Pos[0] 10

execute store result score #y1 mob.main run \
data get entity @s Pos[1] 10

execute store result score #z1 mob.main run \
data get entity @s Pos[2] 10


execute store result score #x2 mob.main run \
random value -7..7

execute store result score #y2 mob.main run \
random value -7..7

execute store result score #z2 mob.main run \
random value -7..7


execute store result entity @s Pos[0] double 0.1 run \
scoreboard players operation #x1 mob.main += #x2 mob.main

execute store result entity @s Pos[1] double 0.1 run \
scoreboard players operation #y1 mob.main += #y2 mob.main

execute store result entity @s Pos[2] double 0.1 run \
scoreboard players operation #z1 mob.main += #z2 mob.main