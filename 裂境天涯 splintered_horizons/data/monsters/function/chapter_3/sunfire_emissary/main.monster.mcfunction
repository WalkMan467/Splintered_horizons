# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #now global.time run \
function monsters:chapter_3/sunfire_emissary/cast/cast