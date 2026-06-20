function cutscene:opening/remove_camera/1

function aj:oceanid/remove/all
kill @e[distance=0..,tag=aj.oceanid.camera,type=item_display]

execute \
    positioned 9998.25 93.00 10066.25 rotated -153 -5 run \
function aj:oceanid/summon {args: {animation: '1', start_animation: true}}

gamemode spectator @a

forceload add 1025 -126

execute \
    as @a[gamemode=spectator] run \
spectate @n[sort=arbitrary,distance=0..,tag=aj.oceanid.camera,type=item_display]


forceload add 670 762 849 519
schedule function cutscene:opening/7/use 5s