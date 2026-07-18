execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.safe_area.selena.1 story.safe_area 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1