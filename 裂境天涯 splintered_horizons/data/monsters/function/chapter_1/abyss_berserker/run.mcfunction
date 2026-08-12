# Attachable Components

function sys:attachable_component/group/guide

execute \
    if score @s sys.silence matches 1.. run \
return 0

effect give @s speed 2 0 true
effect give @s strength 2 0 false