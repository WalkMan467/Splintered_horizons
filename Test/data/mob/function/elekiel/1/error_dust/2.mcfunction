

execute store result score #random mob.main run \
random value 1..8

execute \
    if score #random mob.main matches 1 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0001"}

execute \
    if score #random mob.main matches 2 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0002"}

execute \
    if score #random mob.main matches 3 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0003"}

execute \
    if score #random mob.main matches 4 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0004"}

execute \
    if score #random mob.main matches 5 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0005"}

execute \
    if score #random mob.main matches 6 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0006"}

execute \
    if score #random mob.main matches 7 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0007"}

execute \
    if score #random mob.main matches 8 run \
data modify entity @s text set value {font: "mob:elekiel", text: "\u0008"}