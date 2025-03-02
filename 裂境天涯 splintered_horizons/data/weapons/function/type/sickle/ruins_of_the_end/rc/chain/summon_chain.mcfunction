summon minecraft:block_display ~ ~ ~ {Tags:["weapon.ruins_of_the_end.effect.chain","weapon.ruins_of_the_end.effect.chain.spawn"],block_state: {Name: "minecraft:chain", Properties: {axis: "y", waterlogged: "false"}}, brightness: {block: 15, sky: 15}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.9999999f, 0.9999999f], translation: [-0.5f, 0.5f, -0.5f]}}

execute as @e[tag=weapon.ruins_of_the_end.effect.chain.spawn] at @s run tp @s ^ ^ ^ facing entity @n[tag=weapon.ruins_of_the_end.effect.chain.final.point,sort=furthest] eyes

tag @e[tag=weapon.ruins_of_the_end.effect.chain.spawn] remove weapon.ruins_of_the_end.effect.chain.spawn