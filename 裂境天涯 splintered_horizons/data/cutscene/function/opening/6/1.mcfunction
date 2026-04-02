function cutscene:opening/remove_camera/1

function animated_java:oceanid/remove/all
kill @e[distance=0..,tag=aj.oceanid.camera,type=item_display]

execute \
    as @n[tag=aj.oceanid.root,distance=0..,type=item_display] at @s run \
tp @s 10002 93 10072 195 0
playsound minecraft:voice.blooding record @a 9997.75 94.25 10064.25 0.25 1
particle block_crumble{block_state:"minecraft:redstone_block"} 9997.75 94.25 10064.25 0.5 0.5 0.5 1 40 force @a

schedule function cutscene:opening/6/2 4s