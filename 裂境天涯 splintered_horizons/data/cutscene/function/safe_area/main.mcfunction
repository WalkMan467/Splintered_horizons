
execute \
    as @a at @s run \
function cutscene:safe_area/guide

scoreboard players add .safe_area cutscene.story 1


execute \
    if score .safe_area cutscene.story matches 1440 run \
function cutscene:safe_area/end

execute \
    if score .safe_area cutscene.story matches 0..1440 run \
schedule function cutscene:safe_area/main 1t