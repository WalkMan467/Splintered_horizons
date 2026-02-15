tp @s 9820 81 10137

schedule function cutscene:opening/update_camera/1 1t

execute \
    in minecraft:overworld \
    positioned 9820 81 10137 rotated -90 0 run \
function animated_java:oceanid/summon {args: {animation: '2', start_animation: true}}

function cutscene:opening/main

weather rain 9s

schedule function cutscene:opening/1/0_1 9s