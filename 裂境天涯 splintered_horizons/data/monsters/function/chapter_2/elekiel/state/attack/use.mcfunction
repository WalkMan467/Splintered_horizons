tag @a[sort=arbitrary,distance=..5] add temp2
tag @a[sort=arbitrary,distance=..5,tag=!animation,gamemode=spectator] remove temp2
tag @a[sort=arbitrary,distance=..5,gamemode=creative] remove temp2
tag @a[sort=arbitrary,distance=..5,tag=chapter_2.elekiel.lose] remove temp2


execute \
    unless entity @a[sort=arbitrary,distance=..5,tag=temp2] run \
return 0

scoreboard players set @s monster.elekiel.3.state 2
scoreboard players set @s monster.elekiel.3.atk.delay 100


execute \
    store result score #rdm global.main run \
random value 1..3


execute \
    on passengers \
    if score #rdm global.main matches 1 \
    if entity @s[tag=aj.boss_1.root,type=item_display] run \
function animated_java:boss_1/animations/attack_1/tween \
    { \
        to_frame:8, \
        duration:10 \
    }


execute \
    on passengers \
    if score #rdm global.main matches 2 \
    if entity @s[tag=aj.boss_1.root,type=item_display] run \
function animated_java:boss_1/animations/attack_2/tween \
    { \
        to_frame:8, \
        duration:10 \
    }


execute \
    on passengers \
    if score #rdm global.main matches 3 \
    if entity @s[tag=aj.boss_1.root,type=item_display] run \
function animated_java:boss_1/animations/heavy_attack_1/tween \
    { \
        to_frame:8, \
        duration:10 \
    }