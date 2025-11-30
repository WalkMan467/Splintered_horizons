function monsters:chapter_3/bloody_blade_spider/1/remove_tag

tag @s add forced_interrupt_animation
function players:stop_animation

ride @s mount @n[sort=arbitrary,distance=..6,tag=victim,type=spider]

title @s title ""
title @s subtitle [{"text":"[","color": "dark_red"},{"translate":"player.effect.bleeding","color": "dark_red"},{"text":"]","color": "dark_red"}]
title @s times 20 20 20
playsound minecraft:entity.zombie_villager.cure voice @a ~ ~1 ~ 0.5 2

function cse:status_effects/apply/bleeding/use {duration:100, tick_rate:40, dot:20, max:100}