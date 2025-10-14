execute on target run function system:tree_of_world_memory/crystal/return

scoreboard players set #system.tree_of_world_memory.crystal.return.delay global.main 5
scoreboard players set #system.tree_of_world_memory.crystal global.main 0

data remove entity @s interaction
data merge entity @s {width:1,height:1}
data merge entity 00000080-0000-0100-0000-019c00000005 {start_interpolation: 0,interpolation_duration:0, transformation: {left_rotation: [-0.3535534f, -0.3535534f, -0.14644665f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.50000006f, 0.5f, 0.5f], translation: [-0.17677668f, -0.35355335f, -0.17677669f]}}