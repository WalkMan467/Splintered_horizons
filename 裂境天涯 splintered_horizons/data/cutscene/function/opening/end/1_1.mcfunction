schedule function cutscene:opening/end/2 6s

title @a title ""
title @a subtitle [{"text":"\uE012","font":"minecraft:icon",shadow_color:0},{"text":"\ue104","font":"minecraft:space"}]
title @a times 40 40 40

execute \
    as @a at @s run \
playsound minecraft:voice.join_game voice @s ~ ~1 ~ 1 1

schedule function cutscene:opening/end/1_2 3s
schedule function cutscene:opening/end/2 6s