execute in world_area:main/game_lobby run forceload add 72 5
summon interaction 72 62 5 {UUID:[I; 121,24 ,2 ,521],Passengers:[{id:"minecraft:text_display",Tags:["main.start.act.text"],billboard:"vertical",line_width:200,text_opacity:-1,default_background:0b,shadow:0b,see_through:0b,alignment:"center",brightness:{sky:15,block:15},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [-0.1f, 0.1375f, 0.0f]},text:{"text":"\uE003","font":"minecraft:icon"},background:0}]}

scoreboard players set #game.start global.main 0
scoreboard players set #main.map_lobby.act global.main 1