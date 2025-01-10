particle flash ~ ~ ~ 0 0 0 0 1 force @a

playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 3 1
playsound minecraft:block.beacon.activate voice @a ~ ~1 ~ 3 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~ ~ 3 1

function particle:void_wave/use

execute positioned ~ ~-0.5 ~ run function animated_java:chain_lock/summon {args:{}}

summon minecraft:item_display ~ ~ ~ {Tags:["particle.space_crack.main"],brightness: {block: 15, sky: 15}, interpolation_duration: 8,start_interpolation:1, item: {components: {"minecraft:item_model": "splintered_horizons:space_crack"}, count: 1, id: "minecraft:poisonous_potato"}, transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.09999999f], translation: [1.0f, -0.5f, -0.5f]}}

scoreboard players add @e[tag=particle.space_crack.main] particle 0