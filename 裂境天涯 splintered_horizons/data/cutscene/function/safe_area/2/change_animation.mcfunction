scoreboard players add @s cutscene.aj.animation.state 1
scoreboard players set @s cutscene.aj.animation.change 100


execute \
    if score @s cutscene.aj.animation.state matches 2 run \
function animated_java:sophia/animations/idle2/play {to_frame:10, duration:10}