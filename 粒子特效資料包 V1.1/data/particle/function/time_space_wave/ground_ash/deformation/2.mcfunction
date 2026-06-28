data merge entity @s \
    {\
        start_interpolation:1, \
        interpolation_duration:5, \
        transformation: \
            { \
                scale: \
                    [\
                        2.0f, \
                        0.0f, \
                        2.0f\
                    ], \
                translation: \
                    [ \
                        0.0f, \
                        -0.899f, \
                        0.0f \
                    ] \
            } \
    }

particle minecraft:dust_pillar{block_state:yellow_wool} ~ ~3 ~ 0.5 0.5 0.5 0.1 10 normal @a