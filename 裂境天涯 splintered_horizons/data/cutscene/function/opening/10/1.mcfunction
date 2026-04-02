scoreboard players reset #cutscene.opening.force_execution.10.1 global.main
schedule function cutscene:opening/force_execution/summon/10/1 1t
schedule function cutscene:opening/10/2 2t

tp @a 1063 253 -190 0 0
schedule function cutscene:opening/update_camera/1 1t


scoreboard players set .opening cutscene.story 4380