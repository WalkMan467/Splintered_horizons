scoreboard players set #monster.bossfight.chapter_2.elekiel_phase_2_temp global.main 1

execute \
    positioned -916 60 2750 \
    as @n[sort=arbitrary,distance=..3,tag=aj.boss_1.root,type=item_display] at @s run \
function aj:boss_1/remove/this

execute \
    positioned -916 62 2750 rotated 180 0 run \
function aj:boss_1/summon {args: {animation: 'idle', start_animation: true}}

summon interaction -916 60 2750 \
    {\
        Tags: \
            [ \
                "monster.bossfight.chapter_2.elekiel_phase_2.act", \
                "bossfight.act","interaction.sound.default" \
            ], \
        height:2, \
        UUID:[I; 2054, 2, 31, 3] \
    }

setblock -916 60 2750 light[level=15] replace

advancement grant @a[distance=..60] only players:tips/bossfight