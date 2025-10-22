
scoreboard players add @s mob.duration 1

tp @s ~ ~0.2 ~ ~20 ~

execute if score @s mob.duration matches 10 run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:10}
execute if score @s mob.duration matches 20.. run kill @s