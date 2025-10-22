
scoreboard players add @s mob.duration 1

execute if score @s mob.duration matches 2 run data merge entity @s {transformation:{scale:[8.0f,0.0f,8.0f]},interpolation_duration:5}
execute if score @s mob.duration matches 10 run function mob:elekiel/3/cage/2

execute if score @s mob.duration matches 15..135 run function mob:elekiel/3/cage/imprison/main
execute if score @s mob.duration matches 25 run function mob:elekiel/3/cage/bullet/use

execute if score @s mob.duration matches 130 run function mob:elekiel/3/cage/3
execute if score @s mob.duration matches 135 run function mob:elekiel/3/cage/4

execute if score @s mob.duration matches 141.. run function mob:elekiel/3/cage/clear