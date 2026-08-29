scoreboard players set #cutscene.safe_area global.main 1

title @a actionbar ""

function cutscene:safe_area/0/0

stopsound @a record minecraft:bgm.whitesand_fallen_kingdom

tag @a add cutscene.player_leave.detect

execute \
    as @a[tag=cutscene.player_leave.detect] at @s run \
function players:uniform/refresh
