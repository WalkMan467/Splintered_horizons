

execute \
    store result score #rdm global.main run \
random value 1..8

execute \
    store result entity @s text_opacity int 1 run \
random value 127..255

execute \
    if score #rdm global.main matches 1 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE001"}

execute \
    if score #rdm global.main matches 2 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE002"}

execute \
    if score #rdm global.main matches 3 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE003"}

execute \
    if score #rdm global.main matches 4 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE004"}

execute \
    if score #rdm global.main matches 5 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE005"}

execute \
    if score #rdm global.main matches 6 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE006"}

execute \
    if score #rdm global.main matches 7 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE007"}

execute \
    if score #rdm global.main matches 8 run \
    return run \
data modify entity @s text set value {font: "minecraft:particle", text: "\uE008"}