scoreboard players set #monster.bossfight.chapter_2.elekiel_temp global.main 0

kill 0024ce6d-0003-ae59-0003-40dd00000005

execute \
    positioned 912 60 2018 \
    as @n[sort=arbitrary,distance=..3,tag=aj.boss_1.root,type=item_display] at @s run \
function animated_java:boss_1/remove/this

setblock 912 60 2018 air replace