execute \
    on origin \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"heavenly_guiding_bow"}] run \
return 0

data modify storage temp weapon set from entity @s weapon.components."minecraft:custom_data"."weapon"

execute \
    if data storage temp {weapon:"heavenly_guiding_bow"} run \
function weapons:type/bow/heavenly_guiding_bow/rc/effect/data

data remove storage temp weapon