execute \
    unless score @s player.detect.sprint matches 1.. run \
return 0

function cse:sys/status_effects/use {attribute:"movement_speed",duration:100,base:0.2,value:0.2,max:0.6, id:"energy_infusion_stone.cavalryman",type:"add_multiplied_base"}

playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.85
playsound minecraft:entity.breeze.idle_ground voice @a ~ ~1 ~ 1 1.25

particle minecraft:gust ~ ~1 ~ 0 0 0 1 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 10 normal @a