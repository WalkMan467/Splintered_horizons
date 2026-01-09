tag @s remove fx.sound_wave
tag @s remove summon

data merge entity @s \
    {\
        start_interpolation:10, \
        interpolation_duration:5, \
        transformation: \
            {\
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
                    [\
                        2.0f, \
                        0.0f, \
                        2.0f\
                    ], \
                translation: \
                    [ \
                        0.0f, \
                        -0.499f, \
                        0.0f \
                    ] \
            } \
    }