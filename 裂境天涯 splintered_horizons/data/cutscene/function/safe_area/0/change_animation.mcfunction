scoreboard players add @s cutscene.aj.animation.state 1
scoreboard players set @s cutscene.aj.animation.change 100


execute \
    if entity @s[tag=cutscene.safe_area.0.sophia] \
    if score @s cutscene.aj.animation.state matches 2 run \
rotate @s ~-5 0

execute \
    if entity @s[tag=cutscene.safe_area.0.sophia] \
    if score @s cutscene.aj.animation.state matches 2 run \
function animated_java:sophia/animations/idle2/tween {to_frame:20, duration:20}



execute \
    unless entity @s[tag=cutscene.safe_area.0.stellar] run \
return 0


execute \
    if entity @s[tag=cutscene.safe_area.0.stellar] \
    if score @s cutscene.aj.animation.state matches 2 run \
rotate @s ~5 0

execute \
    if entity @s[tag=cutscene.safe_area.0.stellar] \
    if score @s cutscene.aj.animation.state matches 2 run \
function animated_java:stellar_animation/animations/idle/tween {to_frame:30, duration:30}
