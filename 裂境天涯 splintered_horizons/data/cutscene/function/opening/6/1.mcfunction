function cutscene:opening/remove_camera/1


execute \
    as @n[tag=aj.oceanid.root] run \
function animated_java:oceanid/animations/pause_all

execute \
    as @n[tag=aj.oceanid.root] run \
function animated_java:oceanid/animations/1/play

execute \
    as @n[tag=aj.oceanid.root] at @s run \
tp @s 10002 93 10072 195 0
playsound minecraft:voice.blooding record @a 9997.75 94.25 10064.25 0.25 1
particle block_crumble{block_state:"minecraft:redstone_block"} 9997.75 94.25 10064.25 0.5 0.5 0.5 1 40 force @a

schedule function cutscene:opening/6/2 4s