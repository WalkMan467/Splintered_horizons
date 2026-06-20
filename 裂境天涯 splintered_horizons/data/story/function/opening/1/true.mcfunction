scoreboard players set #story.opening.1_temp global.main 1
scoreboard players set story.opening.1 story.chapter_1 1

execute \
    in world_area:main/game_lobby run \
setblock 1574 60 329 light[level=10] replace

execute \
    in world_area:main/game_lobby \
    as @n[tag=aj.sophia.root,limit=1,distance=..3,type=item_display] run \
function aj:sophia/remove/this


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    rotated -10 0 run \
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
    positioned 1574 60 329 \
    unless score #story.opening.1.glow global.main matches 1 \
    as @n[sort=arbitrary,tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 1b

# 0a9c3558-d906-415b-8345-8352bf7ce93c

execute \
    in world_area:main/game_lobby run \
summon interaction 1574 60 329 \
    { \
        Tags:["story.opening.1.act","interaction.sound.default"], \
        height:2, \
        UUID:[I;178009432,-653901477,-2092596398,-1082332868] \
    }

scoreboard players set story.opening.1 story.chapter_1 1