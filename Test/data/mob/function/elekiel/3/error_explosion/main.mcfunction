
scoreboard players add @s mob.duration 1


execute \
    if score @s mob.duration matches 2 run \
data merge entity @s {transformation: {scale: [1.469f, 8.817f, 0.588f], translation: [-0.073f, 0.0f, -0.529f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 3 run \
data merge entity @s {transformation: {scale: [2.023f, 12.135f, 0.809f], translation: [-0.101f, 0.0f, -0.728f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 4 run \
data merge entity @s {transformation: {scale: [2.378f, 14.266f, 0.951f], translation: [-0.119f, 0.0f, -0.856f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 5 run \
data merge entity @s {transformation: {scale: [2.5f, 15.0f, 1.0f], translation: [-0.125f, 0.0f, -0.9f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 6 run \
data merge entity @s {transformation: {scale: [2.378f, 14.266f, 0.951f], translation: [-0.119f, 0.0f, -0.856f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 7 run \
data merge entity @s {transformation: {scale: [2.023f, 12.135f, 0.809f], translation: [-0.101f, 0.0f, -0.728f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 8 run \
data merge entity @s {transformation: {scale: [1.469f, 8.817f, 0.588f], translation: [-0.073f, 0.0f, -0.529f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 9 run \
data merge entity @s {transformation: {scale: [0.773f, 4.635f, 0.309f], translation: [-0.039f, 0.0f, -0.278f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 10 run \
data merge entity @s {transformation: {scale: [0.0f, 0.0f, 0.0f], translation: [-0.0f, 0.0f, -0.0f]},interpolation_duration:1}


execute on passengers run \
function mob:elekiel/3/error_explosion/passenger


execute \
    if score @s mob.duration matches 15.. run \
function sys:void