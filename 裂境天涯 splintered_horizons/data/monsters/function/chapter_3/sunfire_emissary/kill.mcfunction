execute \
    on passengers \
    if entity @s[type=marker,tag=monster.marker] run \
kill @s

execute \
    if score @s sys.silence matches 1.. run \
return 0

execute \
    if score @s sys.skills_freeze matches 1.. run \
return 0

function monsters:chapter_3/sunfire_emissary/death/use