summon minecraft:item_display ~ ~1 ~ \
    { \
        Tags: \
        [ \
            "spacetime_collapse.bubble", \
            "summon" \
        ], \
        billboard: "center", \
        brightness: \
            { \
                block: 15, \
                sky: 15 \
            }, \
        interpolation_duration: 1, \
        item: \
            { \
                components: \
                    { \
                        "minecraft:item_model": "minecraft:fx/spacetime_collapse/bubble" \
                    }, \
                count: 1, \
                id: "minecraft:ender_pearl"\
            }, \
        teleport_duration: 1, \
        transformation: \
            { \
                left_rotation: \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f, \
                        1.0f \
                    ], \
                right_rotation: \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f, \
                        1.0f \
                    ], \
                scale: \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f \
                    ], \
                translation: \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f \
                    ] \
            } \
    }

tag @s add spacetime_collapse.user

execute \
    as @n[sort=arbitrary,distance=..5,tag=spacetime_collapse.bubble,tag=summon,type=item_display] run \
function particle:spacetime_collapse/bubble/setup

tag @s remove spacetime_collapse.user