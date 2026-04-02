execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.skills_freeze.display.death.marker,type=marker] at @s run \
function sys:skills_freeze/ice_display/death/detect

schedule function sys:skills_freeze/ice_display/death/schedule 1t