scoreboard players set #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main 0

kill 00000806-0000-0002-0000-001f00000003

execute \
    as @n[tag=aj.boss_1.root,limit=1,distance=0..,type=item_display] run \
function animated_java:boss_1/remove/this

setblock -916 60 2750 air replace