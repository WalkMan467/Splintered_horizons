data merge entity @s {start_interpolation: 1,interpolation_duration:5,teleport_duration:1, transformation: {left_rotation: [0.09280694f, 0.01593403f, 0.101034634f, 0.99041665f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0000012f, 3.000003f, 3.0000057f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @s duration 25

tag @s remove summon

execute \
    rotated ~ 0 run \
function monsters:chapter_2/blackhole_creeper/blackhole/range