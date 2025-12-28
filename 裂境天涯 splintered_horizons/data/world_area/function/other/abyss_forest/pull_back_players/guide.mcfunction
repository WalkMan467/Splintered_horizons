
execute \
    unless biome ~ ~ ~ world_area:other/abyss_forest run \
return 0

stopsound @s voice minecraft:entity.wither.spawn

playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 0.75

effect give @s darkness 5 255 true
effect give @s minecraft:blindness 5 255 true


execute \
    in minecraft:the_end run \
tp @s 9 22 -271 -135 5

title @s title {"text":"\uE000","font":"minecraft:screen"}
title @s subtitle {"translate": "world_area.other.abyss_forest.pull_back_players.1","fallback":"森林守護者發現了你","bold": true,"color":"dark_red"}
title @s times 0 20 10

tellraw @s ["\n",{"translate":"world_area.other.abyss_forest.pull_back_players.2","fallback": "由於你發出了聲音被森林守護者發現，你被傳送回了森林的邊緣。","color":"dark_red","bold": true}]