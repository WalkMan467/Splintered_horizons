scoreboard players set #world_area.other.otherworld_portal.1_temp global.main 1


execute \
    positioned 6 35 97.0 rotated -90 0 \
    in minecraft:the_end \
    as @e[tag=aj.portal.root,distance=..3] run \
function animated_java:portal/remove/this


execute \
    positioned 6 35 97.0 rotated -90 0 \
    in minecraft:the_end run \
function animated_java:portal/summon {args: {animation: 'spawn', start_animation: true}}


execute \
    in minecraft:the_end run \
summon minecraft:interaction 6 34.9 95 {height:4.2,width:1.001,UUID:[I;21,2,2,5]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 6 34.9 96 {height:4.2,width:1.001,UUID:[I;21,2,2,6]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 6 34.9 97 {height:4.2,width:1.001,UUID:[I;21,2,2,7]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 6 34.9 98 {height:4.2,width:1.001,UUID:[I;21,2,2,8]}

scoreboard players set #world_area.other.otherworld_portal.1 world_area.other.otherworld_portal.delay 0