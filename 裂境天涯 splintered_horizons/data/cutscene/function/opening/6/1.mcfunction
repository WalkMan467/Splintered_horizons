function cutscene:opening/remove_camera

execute positioned 9997.75 94.5 10064.25 rotated -50.26 16.23 run function animated_java:screen_sneak/summon {args:{}}
tag @n[tag=aj.screen_sneak.camera] add cutscene.opening.6.1

playsound minecraft:voice.blooding record @a 9997.75 94.5 10064.25 0.25 1
execute as @a[gamemode=spectator] run spectate @n[type=#dummy_mob,tag=cutscene.opening.6.1,limit=1,scores={main.3d_dizziness=0}]
execute as @n[tag=aj.screen_sneak.root] run function animated_java:screen_sneak/animations/screen_sneak/play

schedule function cutscene:opening/6/2 4s