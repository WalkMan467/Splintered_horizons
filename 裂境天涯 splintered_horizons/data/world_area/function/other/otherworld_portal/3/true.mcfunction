scoreboard players set #world_area.other.otherworld_portal.3_temp global.main 1


execute \
    positioned 430.00 93.00 -146.50 rotated -180 0 \
    in minecraft:the_end \
    as @e[tag=aj.portal.root,distance=..3] run \
function animated_java:portal/remove/this


execute \
    positioned 430.00 93.00 -146.50 rotated -180 0 \
    in minecraft:the_end run \
function animated_java:portal/summon {args: {animation: 'spawn', start_animation: true}}


execute \
    in minecraft:the_end run \
summon minecraft:interaction 431 92.99 -147 {height:4.2,width:1.001,UUID:[I;21,2,41,5]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 430 92.99 -147 {height:4.2,width:1.001,UUID:[I;21,2,42,6]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 429 92.99 -147 {height:4.2,width:1.001,UUID:[I;21,2,43,7]}

execute \
    in minecraft:the_end run \
summon minecraft:interaction 428 92.99 -147 {height:4.2,width:1.001,UUID:[I;21,2,44,8]}

scoreboard players set #world_area.other.otherworld_portal.3 world_area.other.otherworld_portal.delay 0