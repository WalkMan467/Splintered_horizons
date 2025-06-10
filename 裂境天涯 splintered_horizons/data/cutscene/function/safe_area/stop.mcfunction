scoreboard players set .safe_area cutscene.story -1

kill 00000079-0000-000c-0000-001500000015
kill 000000de-0000-000b-0000-001500000015
kill 00000015-0000-0016-0000-001500000015
kill 00000016-0000-0016-0000-001500000015
kill 00000016-0000-0016-0000-001500000019

forceload remove 762 931 758 935

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.rainy_night.root] run function animated_java:rainy_night/remove/this

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.stellar_animation.root] run function animated_java:stellar_animation/remove/this
execute positioned 758 143 935 as @e[type=item_display,distance=..10,tag=aj.stellar_animation.entity] run kill @s

function story:chapter_2/stop
function animated_java:amysis/remove/all
function animated_java:elina/remove/all

schedule clear cutscene:safe_area/main
schedule clear cutscene:safe_area/1/0
schedule clear cutscene:safe_area/2/0
schedule clear cutscene:safe_area/3/0
schedule clear cutscene:safe_area/4/0
schedule clear cutscene:safe_area/1/use
schedule clear cutscene:safe_area/2/use
schedule clear cutscene:safe_area/3/use
schedule clear cutscene:safe_area/4/use