scoreboard players set #monster.bossfight.chapter_2.elekiel_temp global.main 1

execute \
    as @n[tag=aj.boss_1.root,limit=1,type=item_display] run \
function animated_java:boss_1/remove/this

execute \
    positioned 912 62 2018 rotated 0 0 run \
function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}

summon interaction 912 60 2018 \
    {\
        Tags: \
            [ \
                "monster.bossfight.chapter_2.elekiel.act", \
                "bossfight.act","interaction.sound.default" \
            ], \
        height:2, \
        UUID:[I; 2412141, 241241, 213213, 5] \
    }

setblock 912 60 2018 light[level=15] replace