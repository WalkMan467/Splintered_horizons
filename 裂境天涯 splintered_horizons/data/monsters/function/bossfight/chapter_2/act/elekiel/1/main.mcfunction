## ---開頭--- ##

scoreboard players add #monster.bossfight.chapter_2.elekiel_temp global.main 0
scoreboard players add #monster.bossfight.chapter_2.elekiel.act.enable global.main 0

    # Enable Check
    execute \
        unless score #monster.bossfight.chapter_2.elekiel.act.enable global.main matches 1.. run \
    return 0

    execute \
        positioned 912 60 2018 run \
    tag @a[sort=arbitrary,distance=..30,tag=!monster.bossfight.chapter_2.elekiel.temp] add monster.bossfight.chapter_2.elekiel.temp


    tag @a[sort=arbitrary,gamemode=spectator,tag=!animation,tag=monster.bossfight.chapter_2.elekiel.temp] remove monster.bossfight.chapter_2.elekiel.temp

    # Detect
    execute \
    positioned 912 60 2018 \
    if loaded 912 60 2018 \
    store result score #monster.bossfight.chapter_2.elekiel global.main \
    if entity @p[sort=arbitrary,distance=..30,tag=monster.bossfight.chapter_2.elekiel.temp]

    tag @a[sort=arbitrary,tag=monster.bossfight.chapter_2.elekiel.temp] remove monster.bossfight.chapter_2.elekiel.temp

    # If true;
    execute \
    positioned 912 60 2018 \
    if loaded 912 60 2018 \
    if score #monster.bossfight.chapter_2.elekiel global.main matches 1 \
    if score #monster.bossfight.chapter_2.elekiel_temp global.main matches 0 run \
function monsters:bossfight/chapter_2/act/elekiel/1/true

    # Else
    execute \
    positioned 912 60 2018 \
    if loaded 912 60 2018 \
    if score #monster.bossfight.chapter_2.elekiel global.main matches 0 \
    if score #monster.bossfight.chapter_2.elekiel_temp global.main matches 1 run \
function monsters:bossfight/chapter_2/act/elekiel/1/false