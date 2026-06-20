execute \
    positioned 9999 95 10060 \
    as @e[sort=arbitrary,tag=aj.kyle.root,distance=..1,type=item_display] run \
function aj:kyle/remove/this

execute \
    positioned 9999 93 10065 \
    as @e[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
function aj:aska/remove/this

execute \
    positioned 9999 93 10066 rotated 180 0 run \
function aj:kyle/summon {args: {animation: 'cutscene_attack_1', start_animation: true}}

execute \
    positioned 9999 93 10066 \
    as @e[sort=arbitrary,tag=aj.kyle.root,distance=..1,type=item_display] run \
function aj:kyle/animations/cutscene_attack_1/set_frame {frame:40}

execute \
    positioned 9999 93 10065 rotated 180 0 run \
function aj:aska/summon {args: {animation: 'death', start_animation: true}}

schedule function cutscene:opening/9/3 16s
schedule function cutscene:opening/9/4 3s