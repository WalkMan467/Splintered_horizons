## ---開頭--- ##

scoreboard players add #monster.bossfight.chapter_2.segrina_temp global.main 0
scoreboard players add #monster.bossfight.chapter_2.segrina.act.enable global.main 0

    # Enable Check
    execute \
        if score #bossfight global.main matches 1.. run \
    return 0

    execute \
        unless loaded 762 107 642 run \
    return 0

    execute \
        positioned 762 107 642 run \
    tag @a[sort=arbitrary,distance=..30,tag=!monster.bossfight.chapter_2.segrina.temp] add monster.bossfight.chapter_2.segrina.temp


    tag @a[sort=arbitrary,gamemode=spectator,tag=!animation,tag=monster.bossfight.chapter_2.segrina.temp] remove monster.bossfight.chapter_2.segrina.temp

    # Detect
    execute \
    positioned 762 107 642 \
    if loaded 762 107 642 \
    store result score #monster.bossfight.chapter_2.segrina global.main \
    if entity @p[sort=arbitrary,distance=..30,tag=monster.bossfight.chapter_2.segrina.temp]

    tag @a[sort=arbitrary,tag=monster.bossfight.chapter_2.segrina.temp] remove monster.bossfight.chapter_2.segrina.temp

    # If true;
    execute \
    positioned 762 107 642 \
    if loaded 762 107 642 \
    if score #monster.bossfight.chapter_2.segrina global.main matches 1 \
    if score #monster.bossfight.chapter_2.segrina_temp global.main matches 0 run \
function bossfight:chapter_2/act/segrina/1/true

    # Else
    execute \
    positioned 762 107 642 \
    if loaded 762 107 642 \
    if score #monster.bossfight.chapter_2.segrina global.main matches 0 \
    if score #monster.bossfight.chapter_2.segrina_temp global.main matches 1 run \
function bossfight:chapter_2/act/segrina/1/false