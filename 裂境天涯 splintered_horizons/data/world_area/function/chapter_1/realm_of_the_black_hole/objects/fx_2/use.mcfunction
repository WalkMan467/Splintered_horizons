summon area_effect_cloud ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx_2","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx_2","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}
# summon area_effect_cloud ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx_2","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}
# summon area_effect_cloud ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx_2","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}
# summon area_effect_cloud ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx_2","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}


execute \
    as @e[tag=world_area.realm_of_the_black_hole.fx_2,type=area_effect_cloud] \
    store result score @s world_area.realm_of_the_black_hole.fx2.rotation run \
random value 1..8


spreadplayers ~ ~ 10 40 false @e[tag=world_area.realm_of_the_black_hole.fx_2,type=area_effect_cloud]


execute \
    as @e[tag=world_area.realm_of_the_black_hole.fx_2,type=area_effect_cloud] run \
function world_area:chapter_1/realm_of_the_black_hole/objects/fx_2/rotation


execute \
    as @e[tag=world_area.realm_of_the_black_hole.fx_2,type=area_effect_cloud] at @s run \
tp @s ~ ~20 ~

execute \
    as @e[tag=world_area.realm_of_the_black_hole.fx_2,type=area_effect_cloud] at @s run \
function particle:lightning/bolt_start