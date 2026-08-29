title @s times 0 20 40
title @s subtitle ""
title @s title {"text":"\uE000","font":"minecraft:screen"}


playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1

stopsound @s voice minecraft:voice.in_world_area

team join team.player @a

execute \
    if entity @s[tag=player.death] run \
schedule function sys:respawnpoint/tp/main 1t

function music:reset

# 崩潰/斷線時可能停在制服狀態，重算一次把真背包還回去
tag @s add player.uniform.force
function players:uniform/refresh
