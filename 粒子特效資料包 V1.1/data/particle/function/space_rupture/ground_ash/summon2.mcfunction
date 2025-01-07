
scoreboard players add #temp global.main 12

# summon
summon text_display ~ ~ ~ {Tags:[fx.sr.ga,summon],text:'{"text":"■■■■■■■■■■","bold":true}',text_opacity:255,background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @e[tag=summon,sort=nearest,limit=1] ~ ~ ~ ~ ~
summon text_display ~ ~ ~ {Tags:[fx.sr.ga2,summon],text:'{"text":"■■■■■■■■■■","bold":true}',text_opacity:255,background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @e[tag=summon,tag=fx.sr.ga2,sort=nearest,limit=1] ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=2] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~12 ~ run function particle:space_rupture/ground_ash/summon2
