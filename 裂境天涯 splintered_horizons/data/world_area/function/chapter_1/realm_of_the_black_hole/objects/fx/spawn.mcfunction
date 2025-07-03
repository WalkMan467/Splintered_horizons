scoreboard players set @s[type=marker] world_area.realm_of_the_black_hole.fx.marker_temp 1

summon area_effect_cloud ~ ~0.5 ~ {Tags:["world_area.realm_of_the_black_hole.fx","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:400}

execute store result score #world_area.realm_of_the_black_hole.fx global.main run random value 1..2

execute if score #world_area.realm_of_the_black_hole.fx global.main matches 1 run scoreboard players set @e[type=area_effect_cloud,tag=world_area.realm_of_the_black_hole.fx,tag=summon] world_area.realm_of_the_black_hole.fx 10
execute if score #world_area.realm_of_the_black_hole.fx global.main matches 2 run scoreboard players set @e[type=area_effect_cloud,tag=world_area.realm_of_the_black_hole.fx,tag=summon] world_area.realm_of_the_black_hole.fx -10

tag @e[type=area_effect_cloud,tag=world_area.realm_of_the_black_hole.fx,tag=summon] remove summon

function world_area:chapter_1/realm_of_the_black_hole/objects/fx/main