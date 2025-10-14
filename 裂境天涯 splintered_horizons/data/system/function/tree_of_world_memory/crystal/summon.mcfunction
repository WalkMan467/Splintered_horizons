kill 00000080-0000-0100-0000-019c00000005
summon minecraft:item_display ~ ~0.5 ~ {start_interpolation:0,interpolation_duration:0,UUID:[I; 251, 255, 1, 34],Tags:["system.tree_of_world_memory.crystal.portal"],billboard: "vertical", brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "splintered_horizons:space_crack_2"}, count: 1, id: "minecraft:mojang_banner_pattern"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 2.5f, 2.5f], translation: [0.0f, 0.0f, 0.0f]}}
data merge entity 000000fb-0000-00ff-0000-000100000022 {Glowing:1b,glow_color_override: 41727,start_interpolation: 5, interpolation_duration:2,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f], translation: [0.0f, 0.0f, 0.0f]}}

execute at 00000080-0000-0100-0000-019c00000006 run loot spawn ~ ~ ~ loot system:memory_tree/main
scoreboard players remove #system.tree_of_world_memory.crystal global.main 1

execute if score #system.tree_of_world_memory.crystal global.main matches 0 at 00000080-0000-0100-0000-019c00000006 run summon minecraft:block_display ~ ~0.5 ~ {Glowing:1b,Tags:["system.tree_of_world_memory.crystal","system.tree_of_world_memory"],UUID:[I; 128, 256, 412, 5],billboard: "center", block_state: {Name: "minecraft:glowstone"}, brightness: {block: 15, sky: 15}, transformation: {left_rotation: [-0.3535534f, -0.3535534f, -0.14644665f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.50000006f, 0.5f, 0.5f], translation: [-0.17677668f, -0.35355335f, -0.17677669f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 0 run tag 00000080-0000-0100-0000-019c00000006 remove system.tree_of_world_memory.crystal.run
execute if score #system.tree_of_world_memory.crystal global.main matches 0 run kill 000000fb-0000-00ff-0000-000100000022

execute if score #system.tree_of_world_memory.crystal global.main matches 1.. unless score #system.tree_of_world_memory.crystal.run.delay global.main matches 1.. run schedule function system:tree_of_world_memory/crystal/summon 19t
