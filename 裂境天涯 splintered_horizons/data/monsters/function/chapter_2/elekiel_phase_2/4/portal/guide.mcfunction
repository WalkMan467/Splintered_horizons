execute as 000001ff-0000-00d3-0000-020000000029 at @s \
    if predicate \
    {\
        condition:"minecraft:entity_properties",\
        entity:"this",\
        predicate:\
        {\
            flags:\
            {\
                is_on_ground:1b\
            }\
        }\
    } run \
function monsters:chapter_2/elekiel_phase_2/4/portal/run

execute \
    if entity 000001ff-0000-00d3-0000-020000000029 run \
schedule function monsters:chapter_2/elekiel_phase_2/4/portal/guide 1t