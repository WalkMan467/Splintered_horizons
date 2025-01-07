
summon block_display ~ ~ ~ {Tags:[fx.sr.pa,summon],block_state:{Name:"minecraft:purple_stained_glass"},transformation:[0.0625f,0.0000f,0.0000f,-0.0300f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0625f,-0.0300f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:10}
spreadplayers ~ ~ 1 1 false @e[tag=summon,limit=1]
tag @e[tag=summon,limit=1] remove summon