scoreboard players set @p[tag=temp] weapon.earthquake_axe.animation 60
scoreboard players set @p[tag=temp] player.hide 60
scoreboard players operation @p[tag=temp] player.animation.lock = @p[tag=temp] weapon.earthquake_axe.animation
scoreboard players remove @p[tag=temp] player.finality_tunder 1
scoreboard players set @p[tag=temp] player.actionbar.weapon.earthquake_axe 0

title @p[tag=temp] actionbar ""

function animated_java:stellar_animation/animations/pause_all
function animated_java:stellar_animation/animations/earthquake_axe2/play {frame:4}