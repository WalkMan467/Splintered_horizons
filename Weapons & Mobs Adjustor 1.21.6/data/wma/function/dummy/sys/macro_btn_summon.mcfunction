
execute as @e[tag=wma.dummy.menu] run function wma:void
execute if data storage wma:data {dummy:{btn:1b}} run summon text_display ^ ^ ^1 {Tags:[wma,wma.dummy.menu],text:{"text": "⚙"},billboard:"fixed",transformation:[2.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-0.0000f,2.0000f,0.0000f,0.0000f,-2.0000f,-0.0000f,0.2894f,0.0000f,0.0000f,0.0000f,1.0000f],Passengers:[{id:"interaction",Tags:[wma,wma.dummy.menu],width:0.6f,height:0.2f}]}
execute as @e[type=text_display,tag=wma.dummy.menu] at @s rotated as @e[tag=wma.dummy,tag=wma.dumain,limit=1] run tp @s ~ ~0.1 ~ ~180 0