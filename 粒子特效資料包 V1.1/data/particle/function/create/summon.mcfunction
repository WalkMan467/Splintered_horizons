# Init
$data modify storage particle data.type set value "$(type)"
$data modify storage particle data.physics set value "$(physics)"
$data modify storage particle data.item_model set value "$(item_model)"

tag @s add particle.detect.1
execute \
    unless data storage particle {data:{type:"radial_exoansion"}} run \
tag @s remove particle.detect.1

tag @s add particle.detect.2
execute \
    unless data storage particle {data:{physics:"1"}} \
    unless data storage particle {data:{physics:"0"}} run \
tag @s remove particle.detect.2

data remove storage particle data

execute \
    unless entity @s[tag=particle.detect.1] run \
function particle:create/error/type

execute \
    unless entity @s[tag=particle.detect.2] run \
function particle:create/error/physics


summon armor_stand ~ 255 ~ \
    { \
        ShowArms:1b, \
        UUID:[I;4214,434214,-2421,-3413322],\
        NoGravity:1b, \
        Silent:1b, \
        Invulnerable:1b, \
        Invisible:1b, \
        ShowArms:0b, \
        Small:1b, \
        Marker:1b, \
        NoBasePlate:1b, \
        attributes: \
            [ \
                { \
                    id:"minecraft:scale", \
                    base:0.0 \
                } \
            ], \
        DisabledSlots:4144959 \
    }

item replace entity 00001076-0006-a026-ffff-f68bffcbeab6 weapon.offhand from entity @s weapon.mainhand

$loot replace entity @s weapon.mainhand loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:disc_fragment_5",modifier:[{type:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b}}},{type:"minecraft:set_custom_data",tag:{type:"$(type)",physics:"$(physics)",item_model:"$(item_model)"}}]}]}]}

item replace entity 00001076-0006-a026-ffff-f68bffcbeab6 weapon.mainhand from entity @s weapon.mainhand

data modify storage particle data.create append from entity 00001076-0006-a026-ffff-f68bffcbeab6 equipment.mainhand.components."minecraft:custom_data"

item replace entity @s weapon.mainhand from entity 00001076-0006-a026-ffff-f68bffcbeab6 weapon.offhand

kill 00001076-0006-a026-ffff-f68bffcbeab6

function particle:create/loop
