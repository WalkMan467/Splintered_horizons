
scoreboard players add @s mob.duration 1


execute \
    if score @s mob.duration matches ..5 run \
tp @s ^ ^ ^1.1312

# fx

execute \
    if score @s mob.duration matches 2 run \
data merge entity @s {transformation: {scale: [0.46f, 0.46f, 0.46f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 3 run \
data merge entity @s {transformation: {scale: [0.68f, 0.68f, 0.68f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 4 run \
data merge entity @s {transformation: {scale: [0.9f, 0.9f, 0.9f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 5 run \
data merge entity @s {transformation: {scale: [1.1f, 1.1f, 1.1f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 6 run \
data merge entity @s {transformation: {scale: [1.29f, 1.29f, 1.29f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 7 run \
data merge entity @s {transformation: {scale: [1.45f, 1.45f, 1.45f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 8 run \
data merge entity @s {transformation: {scale: [1.6f, 1.6f, 1.6f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 9 run \
data merge entity @s {transformation: {scale: [1.73f, 1.73f, 1.73f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 10 run \
data merge entity @s {transformation: {scale: [1.84f, 1.84f, 1.84f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 11 run \
data merge entity @s {transformation: {scale: [1.92f, 1.92f, 1.92f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 12 run \
data merge entity @s {transformation: {scale: [1.97f, 1.97f, 1.97f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 13 run \
data merge entity @s {transformation: {scale: [2.0f, 2.0f, 2.0f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 14 run \
data merge entity @s {transformation: {scale: [2.0f, 2.0f, 2.0f]},interpolation_duration:1}

execute \
    if score @s mob.duration matches 15 run \
data merge entity @s {transformation: {scale: [1.97f, 1.97f, 1.97f]},interpolation_duration:1}


execute \
    if score @s mob.duration matches 10 run \
function monsters:chapter_2/elekiel_phase_2/2/mysterray/2


execute \
    if score @s mob.duration matches 135.. run \
tp @s ^ ^ ^-1.1312

execute \
    if score @s mob.duration matches 135 run \
data merge entity @s {transformation: {scale: [0.0f, 0.0f, 0.0f]},interpolation_duration:5}


execute \
    if score @s mob.duration matches 141.. run \
kill @s