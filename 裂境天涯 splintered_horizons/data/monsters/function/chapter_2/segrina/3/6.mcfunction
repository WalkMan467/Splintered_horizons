damage @s 3 monsters:chapter_2/segrina/3/damage by @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie]

function cse:sys/status_effects/use {attribute:"movement_speed",duration:200,base:-0.25,value:-0.25,max:-1.0, id:"monster.chapter_2.segrina",type:"add_multiplied_base"}