summon minecraft:block_display ~ ~0.5 ~ \
    { \
        Tags: \
        [ \
            "summon",\
            "sys.mini_game.hit_the_bullseye.bullseye", \
            "sys.mini_game.hit_the_bullseye.bullseye.actived", \
            "sys.mini_game.hit_the_bullseye.entity" \
        ],\
        Glowing: 1b, \
        block_state: \
            {\
            Name: "minecraft:target", \
            Properties: \
                { \
                    power: "0" \
                } \
            }, \
            brightness: \
                { \
                    block: 8, \
                    sky: 0\
                }, \
            interpolation_duration: 1, \
            teleport_duration: 1, \
            transformation: \
                { \
                    left_rotation: \
                        [ \
                            0.0f, \
                            0.0f, \
                            0.0f, \
                            1.0f\
                        ], \
                    right_rotation: \
                        [\
                            0.0f, \
                            0.0f, \
                            0.0f, \
                            1.0f \
                        ], \
                    scale: \
                        [ \
                            0.75f, \
                            0.75f, \
                            0.75f \
                        ], \
                    translation: \
                        [ \
                            -0.375f, \
                            -0.375f, \
                            -0.375f \
                        ] \
                } \
    }

tag @s add sys.mini_game.hit_the_bullseye.bullseye.user

execute as @n[sort=arbitrary,distance=..10,tag=summon,tag=sys.mini_game.hit_the_bullseye.bullseye,type=block_display] at @s run function sys:mini_game/hit_the_bullseye/bullseye/setup

tag @s remove sys.mini_game.hit_the_bullseye.bullseye.user

schedule function sys:mini_game/hit_the_bullseye/bullseye/main 1t
schedule function sys:mini_game/hit_the_bullseye/reset/main 1t