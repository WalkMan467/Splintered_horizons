## ---開頭--- ##

scoreboard players add #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main 0
scoreboard players add #monster.bossfight.chapter_2.elekiel_phase_2.act.enable global.main 0

    # Enable Check
    execute \
        unless score #monster.bossfight.chapter_2.elekiel_phase_2.act.enable global.main matches 1.. run \
    return 0

    execute \
        unless loaded -916 60 2750 run \
    return 0

    execute \
        unless entity 00000806-0000-0002-0000-001f00000003 \
        if score #monster.bossfight.chapter_2.elekiel_phase_2 global.main matches 1 \
        if score #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main matches 1 run \
    function monsters:bossfight/chapter_2/act/elekiel/1/true

    execute \
        positioned -916 62 2750 \ 
        unless entity @n[sort=arbitrary,distance=..1,tag=aj.boss_1.root,type=item_display] \
        if score #monster.bossfight.chapter_2.elekiel_phase_2 global.main matches 1 \
        if score #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main matches 1 run \
    function monsters:bossfight/chapter_2/act/elekiel/1/true


    execute \
        positioned -916 60 2750 run \
    tag @a[sort=arbitrary,distance=..60,tag=!monster.bossfight.chapter_2.elekiel_phase_2.temp] add monster.bossfight.chapter_2.elekiel_phase_2.temp


    tag @a[sort=arbitrary,gamemode=spectator,tag=!animation,tag=monster.bossfight.chapter_2.elekiel_phase_2.temp] remove monster.bossfight.chapter_2.elekiel_phase_2.temp

    # Detect
    execute \
    positioned -916 60 2750 \
    if loaded -916 60 2750 \
    store result score #monster.bossfight.chapter_2.elekiel_phase_2 global.main \
    if entity @p[sort=arbitrary,distance=..60,tag=monster.bossfight.chapter_2.elekiel_phase_2.temp]

    tag @a[sort=arbitrary,tag=monster.bossfight.chapter_2.elekiel_phase_2.temp] remove monster.bossfight.chapter_2.elekiel_phase_2.temp

    # If true;
    execute \
    positioned -916 60 2750 \
    if loaded -916 60 2750 \
    if score #monster.bossfight.chapter_2.elekiel_phase_2 global.main matches 1 \
    if score #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main matches 0 run \
function monsters:bossfight/chapter_2/act/elekiel_phase_2/1/true

    # Else
    execute \
    positioned -916 60 2750 \
    if loaded -916 60 2750 \
    if score #monster.bossfight.chapter_2.elekiel_phase_2 global.main matches 0 \
    if score #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main matches 1 run \
function monsters:bossfight/chapter_2/act/elekiel_phase_2/1/false