title @a times 20 20 20
title @a title {"text":"\uE000","font":"minecraft:screen"}

scoreboard players set .opening cutscene.story 3981

weather clear
scoreboard objectives setdisplay sidebar player.death_count

schedule function cutscene:opening/end/0 1.1s