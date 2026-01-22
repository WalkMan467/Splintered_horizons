execute \
    unless score @s sys.environmental_mechanism.gravity.timer matches 0.. run \
return 0

scoreboard players remove @s sys.environmental_mechanism.gravity.timer 1

execute \
    unless score @s sys.environmental_mechanism.gravity.timer matches 0 run \
return 0

function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/false