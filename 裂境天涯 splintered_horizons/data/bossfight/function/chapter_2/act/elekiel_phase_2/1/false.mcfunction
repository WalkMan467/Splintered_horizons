scoreboard players set #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main 0

kill 00000806-0000-0002-0000-001f00000003

execute \
    positioned -916 60 2750 \
    as @n[sort=arbitrary,distance=..3,tag=aj.boss_1.root,type=item_display] at @s run \
function aj:boss_1/remove/this

setblock -916 60 2750 air replace