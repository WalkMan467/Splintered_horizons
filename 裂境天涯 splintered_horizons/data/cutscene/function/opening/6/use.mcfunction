
function aj:aska/remove/all
function aj:oceanid/remove/all
function aj:kyle/remove/all

forceload add 9984 10077 10015 10064


execute \
    positioned 9998 93 10065 rotated 180 0 run \
function aj:aska/summon {args: {animation: 'idle', start_animation: true}}


execute \
    positioned 10000 93 10065 rotated 180 0 run \
function aj:oceanid/summon {args: {animation: 'idle', start_animation: true}}


execute \
    positioned 9999 95 10060 rotated 0 0 run \
function aj:kyle/summon {args: {animation: 'idle', start_animation: true}}


schedule function cutscene:opening/6/0 1s