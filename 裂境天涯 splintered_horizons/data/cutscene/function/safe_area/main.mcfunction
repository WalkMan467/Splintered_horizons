execute as @a at @s run function cutscene:safe_area/guide

scoreboard players add .safe_area cutscene.story 1

execute if score .safe_area cutscene.story matches 720 run function cutscene:safe_area/end
execute if score .safe_area cutscene.story matches 0..720 run schedule function cutscene:safe_area/main 1t