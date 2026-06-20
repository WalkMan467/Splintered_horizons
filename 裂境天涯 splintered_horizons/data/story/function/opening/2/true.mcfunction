scoreboard players set #story.opening.2_temp global.main 1
scoreboard players set story.opening.2 story.chapter_1 1

execute \
    in world_area:main/game_lobby run \
setblock 1575 60 306 light[level=10] replace

execute \
    in world_area:main/game_lobby \
    as @n[tag=aj.sophia.root,limit=1,distance=..3,type=item_display] run \
function aj:sophia/remove/this


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    rotated -25 0 run \
function aj:sophia/summon \
    { \
        args: \
        { \
        animation: 'idle', \
        start_animation: true\
        } \
    }

execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    unless score #story.opening.2.glow global.main matches 1 \
    as @n[sort=arbitrary,tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 91eefa12-8ab0-434d-afb8-569f21a20c4c

execute \
    in world_area:main/game_lobby run \
summon interaction 1575 60 306 \
    { \
        Tags:["story.opening.2.act","interaction.sound.default"], \
        height:2, \
        UUID:[I;-1846609390,-1968159923,-1346873697,564268108] \
    }

scoreboard players set story.opening.2 story.chapter_1 1