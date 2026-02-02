execute \
    on origin \
    unless items entity @s weapon.mainhand *[custom_data~{weapon:"sagittarius"}] run \
return 0

data modify storage temp weapon set from entity @s weapon.components."minecraft:custom_data"."weapon"

execute \
    if data storage temp {weapon:"sagittarius"} run \
function weapons:type/bow/sagittarius/rc/effect/data

data remove storage temp weapon