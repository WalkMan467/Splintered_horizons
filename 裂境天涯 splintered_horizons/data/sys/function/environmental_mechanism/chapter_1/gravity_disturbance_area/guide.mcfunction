scoreboard players add @s sys.environmental_mechanism.gravity.timer 1

execute \
    if score @s sys.environmental_mechanism.gravity.timer matches 2 run \
data merge entity @s {start_interpolation: 2,teleport_duration:5,interpolation_duration:5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [14.99f, 49.999992f, 14.99f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score @s sys.environmental_mechanism.gravity.timer matches 10.. \
    align xyz \
    positioned ~-7 ~-24.5 ~-7 \
    as @e[sort=arbitrary,dx=14,dy=49,dz=14,type=!#dummy_mob] at @s run \
function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/true

execute \
    if score @s sys.environmental_mechanism.gravity.timer matches 390 run \
data merge entity @s {start_interpolation: 4,teleport_duration:5,interpolation_duration:5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 49.999992f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    unless score @s sys.environmental_mechanism.gravity.timer matches 400.. run \
return 0

kill @s[type=item_display]