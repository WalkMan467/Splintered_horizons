function cutscene:opening/remove_camera

execute positioned 9997.75 94.25 10064.25 rotated -50.26 16.23 run function animated_java:screen_sneak/summon {args: {animation: 'screen_sneak', start_animation: true}}
execute as @n[tag=aj.oceanid.root] run function animated_java:oceanid/animations/pause_all
execute as @n[tag=aj.oceanid.root] run function animated_java:oceanid/animations/1/play
execute as @n[tag=aj.oceanid.root] at @s run tp @s 10002 93 10072 195 0
playsound minecraft:voice.blooding record @a 9997.75 94.25 10064.25 0.25 1
particle block_crumble{block_state:"minecraft:redstone_block"} 9997.75 94.25 10064.25 0.5 0.5 0.5 1 40 force @a

execute as @a[gamemode=spectator,scores={main.3d_dizziness=0}] run spectate @n[type=#dummy_mob,tag=aj.screen_sneak.camera]
execute as @a[gamemode=spectator,scores={main.3d_dizziness=1..}] run spectate @n[type=#dummy_mob,tag=aj.screen_sneak.root]

schedule function cutscene:opening/6/2 4s