scoreboard players set @p[tag=temp] player.hide 30
scoreboard players set @p[tag=temp] weapon.earthquake_axe.animation 30
scoreboard players operation @p[tag=temp] player.animation.lock = @p[tag=temp] weapon.earthquake_axe.animation
scoreboard players set @p[tag=temp] player.actionbar.weapon.earthquake_axe 0

tag @p[tag=temp] add weapon.earthquake_axe.end
tag @p[tag=temp] remove weapon.earthquake_axe.finality_tunder
title @p[tag=temp] actionbar ""

function animated_java:stellar_animation/animations/pause_all
function animated_java:stellar_animation/animations/earthquake_axe/play