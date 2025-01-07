execute as @a at @s run function cutscene:opening/guide

execute if score .opening cutscene.story matches 0..2080 run schedule function cutscene:opening/main 1t