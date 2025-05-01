summon marker ~ ~ ~ {Tags:["world_area.realm_of_the_black_hole.fx.marker","summon"]}

scoreboard players add @e[tag=world_area.realm_of_the_black_hole.fx.marker,tag=summon,type=marker] world_area.realm_of_the_black_hole.fx.marker_temp 0

tag @e[tag=world_area.realm_of_the_black_hole.fx.marker,tag=summon,type=marker] remove summon

function world_area:chapter_1/realm_of_the_black_hole/objects/main