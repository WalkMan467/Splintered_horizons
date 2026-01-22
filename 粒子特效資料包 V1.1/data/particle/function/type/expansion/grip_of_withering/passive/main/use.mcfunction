summon block_display ~ ~ ~ \
    { \
        Tags: \
            [ \
                "particle.grip_of_withering.passive.main",\
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

tag @s add particle.grip_of_withering.passive.user

execute \
    as @n[sort=arbitrary,distance=..5,tag=particle.grip_of_withering.passive.main,tag=summon,type=block_display] run \
function particle:type/expansion/grip_of_withering/passive/main/setup

tag @s remove particle.grip_of_withering.passive.user