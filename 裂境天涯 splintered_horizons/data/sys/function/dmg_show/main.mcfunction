

execute \
    unless score @s sys.dmg_show.hpmax matches -2147483648..2147483647 run \
function sys:dmg_show/get_hpmax


execute \
    store result score #hp sys.dmg_show.main run \
data get entity @s Health 1000

execute \
    store result score #hp2 sys.dmg_show.main run \
data get entity @s AbsorptionAmount 1000
scoreboard players operation #hp sys.dmg_show.main += #hp2 sys.dmg_show.main


execute \
    unless score @s sys.dmg_show.hpmax = #hp sys.dmg_show.main run \
function sys:dmg_show/use