advancement revoke @s only world_area:chapter_3/realm_of_finality/out

title @s title ["",{"text":"","font":"minecraft:icon","color":"red",shadow_color:0},{"translate":"world_area.icon.chapter_3.realm_of_finality","underlined":true,"color":"dark_red"},{"text":"","font":"minecraft:icon","color":"red",shadow_color:0}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_3","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

stopsound @s voice minecraft:event.mob_effect.raid_omen
stopsound @s voice minecraft:event.mob_effect.trial_omen

playsound minecraft:event.mob_effect.raid_omen voice @s ~ ~1 ~ 1 0.75
playsound minecraft:event.mob_effect.trial_omen voice @s ~ ~1 ~ 1 0.75