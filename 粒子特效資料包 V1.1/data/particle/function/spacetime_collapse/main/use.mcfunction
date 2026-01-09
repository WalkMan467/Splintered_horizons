summon block_display ~ ~ ~ \
    { \
        Tags: \
            [ \
                "spacetime_collapse.main",\
                "summon" \
            ], \
        block_state: \
            { \
                Name:"air" \
            }, \
        start_interpolation:1, \
        interpolation_duration:1,\
        teleport_duration:1 \
    }

tag @s add spacetime_collapse.user

execute \
    as @n[sort=arbitrary,distance=..5,tag=spacetime_collapse.main,tag=summon,type=block_display] run \
function particle:spacetime_collapse/main/setup

tag @s remove spacetime_collapse.user