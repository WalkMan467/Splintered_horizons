execute in minecraft:overworld run forceload remove 42 11 42 11
execute in minecraft:overworld run forceload remove 10055 10310
function cutscene:opening/remove_camera

execute positioned 10055 123 10310 as @n[tag=aj.amysis.root,type=item_display,distance=..3] run function animated_java:amysis/remove/this
execute positioned 9998 93 10065 as @n[distance=..3,type=item_display,tag=aj.aska.root] run function animated_java:aska/remove/this
execute positioned 10000 93 10065 as @n[distance=..3,type=item_display,tag=aj.oceanid.root] run function animated_java:oceanid/remove/this
execute positioned 9999 95 10060 as @n[distance=..3,type=item_display,tag=aj.kyle.root] run function animated_java:kyle/remove/this

weather clear

scoreboard objectives setdisplay sidebar player.death_count

scoreboard players set cutscene.opening.title cutscene.opening.title.timer 0

kill 000000d3-0000-0004-0000-000100000001

schedule clear cutscene:opening/use
schedule clear cutscene:opening/0/title/main
schedule clear cutscene:opening/0/0
schedule clear cutscene:opening/0/1
schedule clear cutscene:opening/0/use
schedule clear cutscene:opening/1/use
schedule clear cutscene:opening/1/guide
schedule clear cutscene:opening/1/0
schedule clear cutscene:opening/1/1
schedule clear cutscene:opening/1/2
schedule clear cutscene:opening/1/3
schedule clear cutscene:opening/2/0
schedule clear cutscene:opening/3/0
schedule clear cutscene:opening/4/0
schedule clear cutscene:opening/5/0
schedule clear cutscene:opening/6/0
schedule clear cutscene:opening/7/0
schedule clear cutscene:opening/end/use
schedule clear cutscene:opening/2/use
schedule clear cutscene:opening/3/use
schedule clear cutscene:opening/4/use
schedule clear cutscene:opening/5/use
schedule clear cutscene:opening/6/use
schedule clear cutscene:opening/7/use
schedule clear cutscene:opening/end/use
schedule clear cutscene:opening/6/2
schedule clear cutscene:opening/1/0_1

function story:chapter_1/ml/stop

schedule clear cutscene:opening/main

scoreboard players set .opening cutscene.story -1

execute positioned 9998 93 10070 as @e[type=item_display,tag=aj.boss_1.root] at @s run function animated_java:boss_1/remove/this

stopsound @a record

gamemode survival @a

execute in minecraft:overworld run tp @a 9999 131 10071 180 0

function cutscene:opening/remove_camera

title @a times 10 40 10
title @a title ""
title @a actionbar ""

tellraw @a {"text": "Cutscene is Stoping!","color": "dark_green"}

item replace entity @a armor.head with air


tag @a remove cutscene.opening