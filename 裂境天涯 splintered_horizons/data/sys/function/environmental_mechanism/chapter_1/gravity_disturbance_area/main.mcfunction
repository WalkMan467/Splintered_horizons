execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.environmental_mechanism.chapter_1.gravity,type=item_display] at @s run \
function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/guide

execute \
    unless score @n[distance=0..,sort=arbitrary,tag=sys.environmental_mechanism.gravity.target,type=!#minecraft:dummy_mob] sys.environmental_mechanism.gravity.timer matches 0.. run \
return 0

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=sys.environmental_mechanism.chapter_1.gravity,type=item_display] run \
return 0

schedule function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/main 1t