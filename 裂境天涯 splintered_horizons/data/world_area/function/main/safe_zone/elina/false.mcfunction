scoreboard players set #world_area.main.safe_zone.elina_temp global.main 0

kill 00000002-0000-0016-0000-003300000016

function story:story_trigger_reset

execute positioned 741 145 968 as @e[tag=aj.elina.root] run function animated_java:elina/remove/this

scoreboard players set story.safe_area.elina.1 story.safe_area 1