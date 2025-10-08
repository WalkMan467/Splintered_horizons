particle flash{color:[1.000,0.000,0.000,1.00]} ~ ~ ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 8 80 normal @a
particle minecraft:ominous_spawning ~ ~2.5 ~ 1 2 1 1 80 normal @a
particle minecraft:explosion_emitter ~ ~2.5 ~ 0 0 0 1 1 normal @a
playsound minecraft:block.vault.open_shutter voice @a ~ ~1 ~ 1 0.65

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~2.5 ~ 1 1.5
playsound minecraft:entity.generic.explode voice @a ~ ~2.5 ~ 1 1

summon minecraft:item_display ~ ~2.5 ~ {Glowing:1b,interpolation_duration:2,Tags:["particle.space_crack_2.main","particle.space_crack_2.spawn"],billboard: "vertical", brightness: {block: 15, sky: 15}, glow_color_override: 8454290, item: {components: {"minecraft:item_model": "splintered_horizons:space_crack_2"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 6.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity @n[tag=particle.space_crack_2.spawn,limit=1] {start_interpolation: 7, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 6.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}

tag @n[tag=particle.space_crack_2.spawn,limit=1] remove particle.space_crack_2.spawn