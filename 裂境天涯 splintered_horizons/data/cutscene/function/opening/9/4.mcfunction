execute \
    positioned 9999 93 10065 \
    as @e[sort=arbitrary,tag=aj.aska.root,distance=..1,type=item_display] run \
function animated_java:aska/remove/this

tp @a 803 71 1590 26.5 0

schedule function cutscene:opening/force_execution/summon/9/4 1t
schedule function cutscene:opening/force_execution/remove/9/4 3s