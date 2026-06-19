# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

# ========================================= #

# Score synchronization
execute \
    unless score #cutscene.world_tree global.main matches 1.. run \
return 0

scoreboard players operation .world_tree cutscene.story = #cutscene.world_tree.timer global.main

execute \
    if score .world_tree cutscene.story matches 1..100 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.1","fallback":"回去吧，讓時間回到過去吧","color":"white"}]

execute \
    if score .world_tree cutscene.story matches 100..200 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.2","fallback":"即便時間奪走了我們的一切","color":"white"}]


execute \
    if score .world_tree cutscene.story matches 200..300 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.3","fallback":"聖火的烈焰終將燃盡","color":"white"}]

execute \
    if score .world_tree cutscene.story matches 300..360 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.4","fallback":"世界再無屬於我們的輝煌","color":"white"}]

execute \
    if score .world_tree cutscene.story matches 360..460 run \
title @a times 0 5 0

execute \
    if score .world_tree cutscene.story matches 360..460 run \
title @a subtitle {"translate":"cutscene.world_tree.title","color":"white"}
execute \
    if score .world_tree cutscene.story matches 360..460 run \
title @a title {"translate":"cutscene.world_tree.author","color":"gold"}

execute \
    if score .world_tree cutscene.story matches 360..460 run \
title @a actionbar ""

execute \
    if score .world_tree cutscene.story matches 460 run \
title @a title ""

execute \
    if score .world_tree cutscene.story matches 460 run \
title @a subtitle ""

execute \
    if score .world_tree cutscene.story matches 460..560 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.4","fallback":"世界再無屬於我們的輝煌","color":"white"}]

execute \
    if score .world_tree cutscene.story matches 560..660 run \
title @a actionbar [{"translate":"cutscene.world_tree.story.5","fallback":"願你再度登神，凱旋歸來","color":"white"}]


execute \
    if score .world_tree cutscene.story matches 660..700 run \
title @a actionbar ""

# loop

execute \
    if score #cutscene.world_tree.timer global.main < #cutscene.world_tree.timeline.end global.main run \
    return run \
schedule function cutscene:world_tree/story/0 1t

scoreboard players reset .world_tree cutscene.story