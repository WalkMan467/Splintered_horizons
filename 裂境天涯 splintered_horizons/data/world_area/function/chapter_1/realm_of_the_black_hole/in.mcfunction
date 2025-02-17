title @s title ["",{"text":"֍","color":"#6d006d"},{"translate":"world_area.icon.chapter_1.realm_of_the_black_hole","underlined":true,"color":"#6d006d"},{"text":"֎","color":"#6d006d"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

stopsound @s voice minecraft:entity.illusioner.cast_spell
playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~1 ~ 1 0.5

advancement revoke @s only world_area:chapter_1/realm_of_the_black_hole/out