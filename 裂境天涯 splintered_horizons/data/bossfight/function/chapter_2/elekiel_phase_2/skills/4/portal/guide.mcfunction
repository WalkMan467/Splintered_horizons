
execute \
    as 000001ff-0000-00d3-0000-020000000029 at @s \
    if predicate \
    {\
        type:"minecraft:entity_properties",\
        entity:"this",\
        predicate:\
        {\
            flags:\
            {\
                is_on_ground:1b\
            }\
        }\
    } run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/portal/run


execute \
    if entity 000001ff-0000-00d3-0000-020000000029 run \
schedule function bossfight:chapter_2/elekiel_phase_2/skills/4/portal/guide 1t