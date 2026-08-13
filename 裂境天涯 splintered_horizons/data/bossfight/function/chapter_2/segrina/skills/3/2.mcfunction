function bossfight:chapter_2/segrina/skills/3/1

# 地板圓圈
    # 688991b1-dea1-4189-b16b-0849ac769c9e
    summon area_effect_cloud ~ 107 ~5 {UUID:[I;1753846193,-559857271,-1318385591,-1401512802],Rotation:[0.0f,-90.0f],Duration:400,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["bossfight.segrina.skills.3.range"]}

    # d67495bd-6580-4e70-944d-b22e32410088
    summon area_effect_cloud ~5 107 ~-5 {UUID:[I;-697002563,1702907504,-1806847442,843120776],Rotation:[0.0f,-90.0f],Duration:400,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["bossfight.segrina.skills.3.range"]}

    # e911d55a-1f75-431c-81e2-fb03696dd142
    summon area_effect_cloud ~-5 107 ~-5 {UUID:[I;-384707238,527778588,-2115831037,1768804674],Rotation:[0.0f,-90.0f],Duration:400,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["bossfight.segrina.skills.3.range"]}


# 靈魂球
    # 497f51a2-b350-4725-b5a4-4fa6c2054469
    summon minecraft:block_display ~ 122 ~5 {UUID:[I;1233080738,-1286584539,-1247522906,-1039842199],Tags:["bossfight.segrina.skills.3.soul"],block_state: {id: "minecraft:air"}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

    # f300026e-2054-4a7d-9b02-af5eb0ec3645
    summon minecraft:block_display ~5 122 ~-5 {UUID:[I;-218103186,542395005,-1694322850,-1326696891],Tags:["bossfight.segrina.skills.3.soul"],block_state: {id: "minecraft:air"}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

    # b51d6e68-3019-4d9f-8ecd-23cb66db09ae
    summon minecraft:block_display ~-5 122 ~-5 {UUID:[I;-1256362392,806964639,-1899158581,1725630894],Tags:["bossfight.segrina.skills.3.soul"],block_state: {id: "minecraft:air"}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}