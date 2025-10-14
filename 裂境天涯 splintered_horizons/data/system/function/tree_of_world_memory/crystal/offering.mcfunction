execute if score #system.tree_of_world_memory.crystal global.main matches 5.. run return 0
execute if score #system.tree_of_world_memory.crystal.return.delay global.main matches 1.. run return 0

scoreboard players set @a[distance=..3,gamemode=!spectator] player.actionbar.tree_of_world_memory.2 60

execute if score #system.tree_of_world_memory.crystal global.main matches 0 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [0.14644665f, -0.3535534f, -0.3535534f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7500001f, 0.75f, 0.75000006f], translation: [-0.109834895f, 2.9802322E-8f, -0.64016503f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 1 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [-0.3535534f, -0.3535534f, -0.14644665f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.35355335f, -0.7071067f, -0.35355338f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 2 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [0.14644665f, -0.35355347f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.2499998f, 1.2499998f], translation: [-0.1830582f, 8.940697E-8f, -1.0669417f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 3 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [0.3535534f, -0.3535534f, 0.14644663f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.21966994f, 5.9604645E-8f, -1.28033f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 4 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [0.3535534f, 0.35355344f, -0.14644665f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.75f, 1.7500002f, 1.7500002f], translation: [-1.4937184f, 1.1920929E-7f, -0.25628144f]}}
execute if score #system.tree_of_world_memory.crystal global.main matches 5 run data merge entity @s {start_interpolation: 1,interpolation_duration:5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [-1.0f, -1.0f, -1.0f]}}

execute if score #system.tree_of_world_memory.crystal global.main matches 2 run data merge entity 00000080-0000-0100-0000-019c00000006 {width:1.25,height:1.25}
execute if score #system.tree_of_world_memory.crystal global.main matches 3 run data merge entity 00000080-0000-0100-0000-019c00000006 {width:1.5,height:1.5}
execute if score #system.tree_of_world_memory.crystal global.main matches 4 run data merge entity 00000080-0000-0100-0000-019c00000006 {width:1.75,height:1.75}
execute if score #system.tree_of_world_memory.crystal global.main matches 5 run data merge entity 00000080-0000-0100-0000-019c00000006 {width:2.0,height:2.0}

scoreboard players add #system.tree_of_world_memory.crystal global.main 1
kill @n[distance=..3,type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"world_memory_fragments"}}}}]

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 1 1 normal @a
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a
particle end_rod ~ ~ ~ 0 0 0 0.5 20 normal @a
playsound minecraft:block.respawn_anchor.charge voice @a ~ ~1 ~ 1 2