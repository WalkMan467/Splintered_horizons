execute \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{max:0.3}}}} run \
    return run \
scoreboard players reset @s player.detect.sprint

function energy_infusion_stone:skills/weapon/cavalryman/charged