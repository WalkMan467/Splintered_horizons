summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:20,Tags:["monster.blackhole_creeper.blackhole","monster.blackhole_creeper.blackhole.point"]}

summon minecraft:item_display ~ ~0.5 ~ {Tags:["monster.blackhole_creeper.blackhole","monster.blackhole_creeper.blackhole.display","summon"],start_interpolation: 2,interpolation_duration:5,teleport_duration:1, billboard: "center", brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/blackhole/core"}, count: 1, id: "minecraft:ender_eye"}, teleport_duration: 1, transformation: {left_rotation: [0.09280694f, 0.01593403f, 0.101034634f, 0.99041665f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

schedule function monsters:chapter_2/blackhole_creeper/blackhole/guide 1t
schedule function monsters:chapter_2/blackhole_creeper/blackhole/main_2 1t

particle minecraft:portal ~ ~0.5 ~ 0 0 0 8 250 normal @a[scores={player.setting.reduce_particles=0}]
particle minecraft:portal ~ ~0.5 ~ 0 0 0 8 250 normal @a
particle minecraft:ominous_spawning ~ ~0.5 ~ 0 0 0 5 100 normal @a[scores={player.setting.reduce_particles=0}]
particle minecraft:ominous_spawning ~ ~0.5 ~ 0 0 0 8 100 normal @a
particle minecraft:sonic_boom ~ ~0.5 ~ 0 0 0 0 1 force @a

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~0.5 ~ 0.75 0.875
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~0.5 ~ 1 1
playsound minecraft:entity.generic.explode voice @a ~ ~0.5 ~ 0.75 0.5
playsound minecraft:block.beacon.deactivate voice @a ~ ~0.5 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~0.5 ~ 1 0.5