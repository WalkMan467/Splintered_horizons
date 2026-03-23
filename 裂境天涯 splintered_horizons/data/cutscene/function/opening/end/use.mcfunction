tag @a add cutscene.opening.end

title @a times 0 20 20
title @a title {"text":"\uE000","font":"minecraft:screen"}
title @a subtitle ""

scoreboard players set .opening cutscene.story 4000
schedule clear cutscene:opening/main

weather clear
scoreboard objectives setdisplay sidebar player.death_count

schedule function cutscene:opening/end/0 1.1s
schedule function cutscene:opening/end/1 3s