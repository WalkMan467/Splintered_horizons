execute in minecraft:overworld run forceload remove 42 11 42 11

function animated_java:aska/remove/all
function animated_java:oceanid/remove/all
function animated_java:kyle/remove/all


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

function story:chapter_1/opening/stop

schedule clear cutscene:opening/main

scoreboard players set .opening cutscene.story -1

stopsound @a record

gamemode survival @a

tp @a 9999 131 10071 180 0

title @a times 10 40 10
title @a title ""
title @a actionbar ""

tellraw @a {"text": "Cutscene is Stoping!","color": "dark_green"}

item replace entity @a armor.head with air


tag @a remove cutscene.opening