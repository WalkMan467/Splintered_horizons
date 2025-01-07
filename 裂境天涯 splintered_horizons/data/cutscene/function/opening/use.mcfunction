time set midnight
weather clear

execute in minecraft:overworld run forceload add 42 11 42 11

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

schedule clear cutscene:opening/main

function cutscene:opening/0/use
title @a actionbar ""

tag @a remove cutscene.opening

execute as @a at @s run schedule function cutscene:opening/1/use 24s