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
    as @n[distance=..1,sort=arbitrary,tag=armor.shockwave.display,tag=summon,type=item_display] at @s run \
function energy_infusion_stone:skills/armor/defender/shockwave/setup

scoreboard players set @s armor.enchantment.shockwave.timer 5

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 1.875
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a

execute \
    as @e[sort=arbitrary,distance=..4,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob] run \
function sys:dummy_mob/interface

execute \
    as @e[sort=arbitrary,distance=..4,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!player] at @s run \
function energy_infusion_stone:skills/armor/defender/mob_knockback/1 {speed:-0.75}

tag @s remove armor.shockwave.user

tag @e[sort=arbitrary,distance=..4,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob] remove sys.dummy_mob.interface