scoreboard players add @s cutscene.aj.animation.state 1
scoreboard players set @s cutscene.aj.animation.change 100

execute if score @s cutscene.aj.animation.state matches 2 run function animated_java:rainy_night/animations/idle2/tween {to_frame:20, duration:20}