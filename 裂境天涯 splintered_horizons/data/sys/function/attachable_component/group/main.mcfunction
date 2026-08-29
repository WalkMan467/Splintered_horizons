# warn-off-file target-selector-no-dimension
schedule function sys:attachable_component/group/main 1t

execute \
    as @e[type=!#minecraft:dummy_mob,type=!player] at @s run \
function sys:attachable_component/group/guide