
scoreboard players add #temp global.main 12

# summon
summon text_display ~ ~ ~ {Tags:[fx.rotf.ga,summon],text:{"text":"■■■■■■■■■■","obfuscated":true,"color":"dark_red","bold": true},text_opacity:255,brightness: {block: 15, sky: 15},background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @n[distance=0..,tag=summon,sort=arbitrary,limit=1,tag=!animated_java.display,type=text_display] ~ ~ ~ ~ ~
summon text_display ~ ~ ~ {Tags:[fx.rotf.ga2,summon],text:{"text":"■■■■■■■■■■","obfuscated":true,"color":"dark_red","bold": true},text_opacity:255,brightness: {block: 15, sky: 15},background:0,alignment:"right",line_width:210,default_background:false,transformation:[0.0000f,3.0000f,0.0000f,-0.1250f,-3.0000f,0.0000f,0.0000f,0.5229f,0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1}
tp @n[tag=summon,tag=fx.rotf.ga2,sort=arbitrary,limit=1,distance=0..,type=text_display] ~ ~ ~ ~180 ~
tag @e[tag=summon,sort=arbitrary,limit=2,tag=!animated_java.display,distance=0..,type=text_display] remove summon

# loop

execute \
    if score #temp global.main matches ..360 rotated ~12 ~ run \
function particle:ruins_of_the_finality_rupture/ground_ash/summon2
