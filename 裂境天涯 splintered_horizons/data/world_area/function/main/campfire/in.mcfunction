title @s title ["",{"text":"☀","color":"gold"},{"text":"營火","underlined":true,"color":"gold"},{"text":"☀","color":"gold"}]
title @s subtitle [{"text":"☀","color":"gold"},{"text":"Campfire","italic":true,"underlined":true,"color":"gold"},{"text":"☀","color":"gold"}]
title @s times 20 20 20

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1


tag @s add campfire

stopsound @s record minecraft:bgm.moonlight_sonata
stopsound @s record minecraft:bgm.etude_op_8_no_12
execute as @s[tag=campfire] run function music:chapter_1/reset

function music:main/campfire/start

advancement grant @s only music:main/campfire/icon

advancement revoke @s only world_area:main/campfire/out