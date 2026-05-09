scoreboard players set #monster.bossfight.chapter_2.segrina_temp global.main 1

execute \
    positioned 762 109 642 \
    as @e[distance=0..,tag=aj.segrina.root,type=item_display] run \
function animated_java:segrina/remove/this

execute \
    positioned 762 109 642 rotated 0 0 run \
function animated_java:segrina/summon {args: {animation: 'idle', start_animation: true}}

# 9eae154b-6d95-4bc0-aa0c-4c08ed8804f1
summon interaction 762 107 642 \
    {\
        Tags: \
            [ \
                "monster.bossfight.chapter_2.segrina.act", \
                "bossfight.act","interaction.sound.default" \
            ], \
        height:2, \
        UUID:[I; -1632758453,1838500800,-1442034680,-309852943] \
    }

setblock 762 107 642 light[level=8] replace

advancement grant @a[distance=..30] only players:tips/bossfight