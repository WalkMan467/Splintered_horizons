scoreboard players set @s player.click.interval 5

clear @s *[custom_data~{id:"tactical_scroll_of_brilliance"}] 1


execute \
    store result score #item.tactical_scroll_of_brilliance.rdm.effect global.main run \
random value 1..3


execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 1 run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/strength/use {duration:400,base:0.08, value:0.08,max:0.24}

execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 1 run \
tellraw @s [{"translate": "item.tactical_scroll_of_brilliance.effect.1","color": "gold"}]


execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 2 run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/speed/use {duration:400,base:0.05, value:0.05,max:0.15}

execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 2 run \
tellraw @s [{"translate": "item.tactical_scroll_of_brilliance.effect.2","color": "gold"}]


execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 3 run \
function cse:status_effects/apply/item/tactical_scroll_of_brilliance/armor_enhancement/use {duration:400,base:0.08, value:0.08,max:0.24}

execute \
    if score #item.tactical_scroll_of_brilliance.rdm.effect global.main matches 3 run \
tellraw @s [{"translate": "item.tactical_scroll_of_brilliance.effect.3","color": "gold"}]

playsound minecraft:block.chest.open voice @s ~ ~1 ~ 1 1