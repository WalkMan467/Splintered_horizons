title @s times 0 65 0
title @s title {"text":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

scoreboard players set .opening cutscene.story 0

tp @a 9999 95 10070

function cutscene:opening/0/music

scoreboard players set 0004e729-0004-e663-0000-198fffff5b77 duration 240

schedule function cutscene:opening/force_execution/remove/0/title 1t
schedule function cutscene:opening/force_execution/summon/0/0 1t
schedule function cutscene:opening/force_execution/summon/0/0_1 8s
schedule function cutscene:opening/main 1t
schedule function cutscene:opening/update_camera/1 1t
schedule function cutscene:opening/story/0 1t

schedule function cutscene:opening/0/1 12s