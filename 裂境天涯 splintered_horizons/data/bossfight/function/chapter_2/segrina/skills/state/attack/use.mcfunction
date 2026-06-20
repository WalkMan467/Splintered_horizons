execute \
    if score @s monster.segrina.state matches 2 run \
return 0

scoreboard players set @s monster.segrina.state 2
scoreboard players set @s monster.segrina.atk.delay 100

execute \
    on passengers \
    if entity @s[tag=aj.segrina.root,type=item_display] run \
function aj:segrina/animations/attack_2/tween \
    { \
        to_frame:8, \
        duration:10 \
    }