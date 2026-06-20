execute \
    if score @s monster.segrina.state matches 1 run \
return 0

scoreboard players set @s monster.segrina.state 1

execute \
    on passengers \
    if entity @s[tag=aj.segrina.root,type=item_display] run \
function aj:segrina/animations/idle/tween \
    { \
        to_frame:8, \
        duration:10 \
    }