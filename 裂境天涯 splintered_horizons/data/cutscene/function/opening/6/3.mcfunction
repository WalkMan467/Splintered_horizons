function cutscene:opening/remove_camera

function animated_java:oceanid/remove/all
kill @e[type=item_display,tag=aj.oceanid.camera]

execute \
    positioned 9998.25 93.00 10066.25 rotated -153 -5 run \
function animated_java:oceanid/summon {args: {animation: '1', start_animation: true}}

gamemode spectator @a


execute \
    as @a[gamemode=spectator] run \
spectate @n[type=item_display,tag=aj.oceanid.camera,limit=1]