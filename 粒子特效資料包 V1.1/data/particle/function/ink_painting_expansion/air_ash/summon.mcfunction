
execute \
    store result score #rdm global.main run \
random value 1..100


execute \
    if score #rdm global.main matches 1..65 run \
summon text_display ~ ~-2 ~ {Tags:[fx.ipe.aa,summon],text:[{"text":"▢","bold":true,"color": "black"}],background:0,alignment:"left",billboard:"center",line_width:0,default_background:false,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 5.0f, 5.0f], translation: [0.0f, -0.375f, 0.0f]},teleport_duration:20}

execute \
    if score #rdm global.main matches 65..100 run \
summon text_display ~ ~-2 ~ {Tags:[fx.ipe.aa,summon],text:[{"text":"▢","bold":true,"color": "white"}],background:0,alignment:"left",billboard:"center",line_width:0,default_background:false,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 5.0f, 5.0f], translation: [0.0f, -0.375f, 0.0f]},teleport_duration:20}

spreadplayers ~ ~ 10 10 false @n[tag=fx.ipe.aa,tag=summon,type=text_display]
tag @n[tag=fx.ipe.aa,tag=summon,type=text_display] remove summon