execute \
    unless score @s player.detect.sprint matches 1.. \
    if score @s energy_infusion_stone.cavalryman.charged matches 0.. run \
    return run \
scoreboard players reset @s energy_infusion_stone.cavalryman.charged

execute \
    if score @s player.detect.sprint matches 1.. \
    if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{slots:{weapon.mainhand:{items:"#minecraft:enchantable/weapon",predicates:{"minecraft:enchantments":[{enchantments:"energy_infusion_stone:skills/weapon/cavalryman",levels:{min:1}}]}}}}} run \
scoreboard players add @s energy_infusion_stone.cavalryman.charged 1


execute \
    if score @s energy_infusion_stone.cavalryman.charged matches 40 run \
function energy_infusion_stone:skills/weapon/cavalryman/speed

execute \
    if score @s energy_infusion_stone.cavalryman.charged matches 40.. run \
function energy_infusion_stone:skills/weapon/cavalryman/fx