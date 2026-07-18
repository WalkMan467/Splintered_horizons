tag @s remove summon

data merge entity @s \
    { \
        start_interpolation: 1, \
        interpolation_duration:3, \
        teleport_duration:1, \
        transformation: \
            { \
                left_rotation: \
                    [ \
                        -0.7071068f, \
                        0.0f, \
                        0.0f, \
                        0.7071068f \
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
                        6.000001f, \
                        5.9999995f, \
                        0.09999998f \
                    ], \
                translation: \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f \
                    ] \
            } \
    }

scoreboard players set @s duration 5
scoreboard players operation @s armor.enchantment.shockwave.id = @p[sort=arbitrary,tag=armor.shockwave.user] player.id