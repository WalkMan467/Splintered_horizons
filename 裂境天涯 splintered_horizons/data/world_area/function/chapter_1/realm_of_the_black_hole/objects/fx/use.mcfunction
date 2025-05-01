scoreboard players remove @s[scores={world_area.realm_of_the_black_hole.fx=1..}] world_area.realm_of_the_black_hole.fx 1

scoreboard players add @s[scores={world_area.realm_of_the_black_hole.fx=..-1}] world_area.realm_of_the_black_hole.fx 1


rotate @s ~2 0
scoreboard players reset #world_area.realm_of_the_black_hole particle
function world_area:chapter_1/realm_of_the_black_hole/objects/fx/range

particle dust_color_transition{from_color:[0.902,0.000,1.000],scale:1.25,to_color:[0.024,0.000,0.741]} ~ ~10 ~ 0.5 10 0.5 0 200 force