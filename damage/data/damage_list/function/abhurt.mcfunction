$summon minecraft:text_display ^-0.25 ^1 ^0.5 {"text":["",{"text":"💔","color":"gray"},{"text":"$(abmath)","color":"white"}],teleport_duraion:1,background:0,billboard:center,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.2f,0.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f], scale: [1.0f,1.0f,1.0f]},see_through:true,Tags:["hurttext","Duration","summon"]}

scoreboard players set @e[tag=hurttext,tag=summon,type=text_display] duration 20
tag @e[tag=hurttext,tag=summon,type=text_display] remove summon