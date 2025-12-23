
tag @s add this
data modify entity 000000de-0000-0015-0000-007900000001 text set value {selector:"@e[tag=this,limit=1]"}
data modify entity @s data.hp_display.CustomName set from entity 000000de-0000-0015-0000-007900000001 text
tag @s remove this