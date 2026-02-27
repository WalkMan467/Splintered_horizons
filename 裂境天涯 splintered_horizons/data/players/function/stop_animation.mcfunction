
execute \
    if entity @s[tag=armor.black_hole.animation.boots.player] run \
function armors:type/black_hole/animation/boots/stop

execute \
    if entity @s[tag=weapon.earthquake_axe.user] run \
function weapons:type/axe/earthquake_axe/animation/stop

title @s[tag=forced_interrupt_animation,tag=animation] title {"translate":"player.stop_animation","color":"red","fallback": "技能被中斷"}
title @s[tag=forced_interrupt_animation,tag=animation] times 0 20 20
title @s[tag=forced_interrupt_animation,tag=animation] subtitle ""

playsound minecraft:entity.zombie_villager.cure voice @s[tag=forced_interrupt_animation,tag=animation] ~ ~ ~ 1 1


tag @s remove animation
tag @s remove forced_interrupt_animation