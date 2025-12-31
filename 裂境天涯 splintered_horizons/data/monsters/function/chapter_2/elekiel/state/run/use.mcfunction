execute \
    if score @s monster.elekiel.3.state matches 1 run \
return 0

scoreboard players set @s monster.elekiel.3.state 1

execute \
    on passengers \
    if entity @s[tag=aj.boss_1.root,type=item_display] run \
function animated_java:boss_1/animations/walk/tween \
    { \
        to_frame:8, \
        duration:10 \
    }