execute \
    if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{custom_data:{"id":"heavenly_guiding_arrow"}}}}}} \
    if entity @s[tag=weapon.heavenly_guiding_bow.arrow.holy_fire,tag=weapon.heavenly_guiding_bow.arrow.2] run \
function weapons:type/arrows/heavenly_guiding_arrow/ground_detect

$function weapons:type/arrows/$(id)/use

kill @s