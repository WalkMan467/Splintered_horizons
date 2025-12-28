
scoreboard players add #temp global.main 12

# summon
summon text_display ~ ~ ~ {Tags:[fx.rotf.ga,summon],text:{"text":"■■■■■■■■■■","obfuscated":true,"color":"dark_red","bold": true},text_opacity:255,background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @e[tag=summon,sort=nearest,limit=1,tag=!aj.display] ~ ~ ~ ~ ~
summon text_display ~ ~ ~ {Tags:[fx.rotf.ga2,summon],text:{"text":"■■■■■■■■■■","obfuscated":true,"color":"dark_red","bold": true},text_opacity:255,background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @e[tag=summon,tag=fx.rotf.ga2,sort=nearest,limit=1] ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=2,tag=!aj.display] remove summon

# loop

execute \
    if score #temp global.main matches ..360 rotated ~12 ~ run \
function particle:ruins_of_the_finality_rupture/ground_ash/summon2
