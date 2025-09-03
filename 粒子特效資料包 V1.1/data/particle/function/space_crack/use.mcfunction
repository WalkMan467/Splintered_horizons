particle flash ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~ ~ 3 1
playsound minecraft:block.beacon.activate voice @a ~ ~ ~ 3 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~ ~ 3 1

execute positioned ~ ~0.5 ~ run function particle:void_wave/use
execute positioned ~ ~-0.5 ~ run function animated_java:chain_lock/summon {args: {animation: 'lock', start_animation: true}}
summon minecraft:item_display ~ ~0.5 ~ {Tags:["particle.space_crack.main"],brightness: {block: 15, sky: 15}, interpolation_duration: 8,start_interpolation:1, item: {components: {"minecraft:item_model": "splintered_horizons:space_crack"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.09999999f], translation: [1.0f, -0.5f, -0.5f]}}

scoreboard players add @e[tag=particle.space_crack.main] particle 0