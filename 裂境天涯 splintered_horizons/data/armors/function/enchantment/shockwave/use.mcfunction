summon minecraft:item_display ~ ~ ~ \
    { \
        start_interpolation:1, \
        interpolation_duration:1, \
        teleport_duration:1, \
        Tags:["armor.shockwave.display","summon"], \
        brightness: \
            { \
                block: 15, \
                sky: 15 \
            }, \
        item: \
            { \
                components: \
                    { \
                        "minecraft:item_model": "minecraft:fx/spacetime_collapse/bubble" \
                    }, \
                count: 1, \
                id: "minecraft:iron_sword" \
            }, \
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
                        0.0f, \
                        0.0f, \
                        0.09999998f \
                    ], \
                translation:  \
                    [ \
                        0.0f, \
                        0.0f, \
                        0.0f \
                    ] \
            } \
    }

tag @s add armor.shockwave.user

execute \
    as @n[sort=arbitrary,tag=armor.shockwave.display,tag=summon,type=item_display] at @s run \
function armors:enchantment/shockwave/setup

tag @s remove armor.shockwave.user

scoreboard players set @s armor.enchantment.shockwave.timer 5

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1.875
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a


effect give @e[sort=arbitrary,distance=..4,type=!#minecraft:dummy_mob,type=!player] slowness 5 1 false
effect give @s speed 1 0 false