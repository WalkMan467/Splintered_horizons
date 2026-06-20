scoreboard players set #monster.bossfight.chapter_2.segrina_temp global.main 0

kill 9eae154b-6d95-4bc0-aa0c-4c08ed8804f1

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=..3,tag=aj.segrina.root,type=item_display] at @s run \
function aj:segrina/remove/this

setblock 762 107 642 air replace