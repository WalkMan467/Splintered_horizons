
execute \
    as @e[type=item_display,tag=chapter_3.emissary_of_the_temporal_rift.key] at @s run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/guide


execute \
    if entity @n[tag=chapter_3.emissary_of_the_temporal_rift.key,type=item_display] run \
schedule function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main 1t