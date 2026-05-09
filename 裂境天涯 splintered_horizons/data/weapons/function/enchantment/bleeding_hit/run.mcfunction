title @s title ""
title @s subtitle [{"text":"[","color": "dark_red"},{"translate":"cse.status_effects.bleeding","color": "dark_red"},{"text":"]","color": "dark_red"}]
title @s times 20 20 20

playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 2

function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}

scoreboard players set @p[tag=user.player] weapon.enchantment.bleeding_hit.cd 200