execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/stop

execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.chapter_1.sq.1 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1