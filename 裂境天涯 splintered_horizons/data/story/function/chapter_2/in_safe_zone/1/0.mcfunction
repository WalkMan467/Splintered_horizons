
function story:chapter_2/in_safe_zone/stop

scoreboard players set story.chapter_2.ml story.chapter_2 1

stopsound @a record minecraft:bgm.whitesand_fallen_kingdom
function cutscene:safe_area/use

schedule function story:chapter_2/in_safe_zone/1/1 1s