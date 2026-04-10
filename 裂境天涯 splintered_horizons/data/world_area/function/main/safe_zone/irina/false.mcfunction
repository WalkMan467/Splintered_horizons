scoreboard players set #world_area.main.safe_zone.irina_temp global.main 0

kill 00000002-0000-0016-0000-003300000016

function story:story_trigger_reset


execute \
    positioned 741 145 968 \
    as @n[sort=arbitrary,tag=aj.irina.root,distance=..1,type=item_display] run \
function animated_java:irina/remove/this

scoreboard players set story.safe_area.irina.1 story.safe_area 1