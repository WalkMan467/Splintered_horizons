summon minecraft:item_display ~ ~ ~ {start_interpolation:1,Tags:["particle.tunder_red","summon"],billboard: "fixed", brightness: {block: 15, sky: 15}, interpolation_duration: 40, item: {components: {"minecraft:item_model": "minecraft:fx/tunder_red"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 5}


execute \
    store result score @n[tag=particle.tunder_red,tag=summon] duration run \
random value 20..59

$execute \
    store result storage particle tunder_red.motion_x int 1 run \
random value -$(spread)..$(spread)
$execute \
    store result storage particle tunder_red.motion_y int 1 run \
random value -$(spread)..$(spread)
$execute \
    store result storage particle tunder_red.motion_z int 1 run \
random value -$(spread)..$(spread)

execute \
    store result storage particle tunder_red.facing_x int 1 run \
random value 0..360

execute \
    store result storage particle tunder_red.facing_y int 1 run \
random value -90..90



execute \
    as @n[tag=particle.tunder_red,tag=summon] at @s run \
function particle:tunder_red/tp with storage particle tunder_red

tag @n[tag=particle.tunder_red,tag=summon] remove summon

data remove storage particle tunder_red