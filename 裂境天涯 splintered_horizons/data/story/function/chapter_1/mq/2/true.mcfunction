scoreboard players set #story.chapter_1.mq.2_temp global.main 1
scoreboard players set story.chapter_1.mq.2 story.chapter_1 1

# Detect Weather \
{
    execute if predicate main:weather/is_sunny run \
    scoreboard players set #weather.temp global.main 0

    execute if predicate main:weather/is_rain run \
    scoreboard players set #weather.temp global.main 1

    execute if predicate main:weather/is_thunder run \
    scoreboard players set #weather.temp global.main 2
#\
}

weather rain

kill @e[tag=story.chapter_1.mq.2]
execute as @n[tag=aj.rainy_night.root,limit=1,distance=..3] run \
function animated_java:rainy_night/remove/this

execute positioned 1 64 -109 rotated 90 0 run \
function animated_java:rainy_night/summon \
    { \
        args: \
        { \
        animation: 'idle', \
        start_animation: true\
        } \
    }

execute positioned 1 64 -109 unless score #story:icon/story/chapter_1/mq/scebe_2 global.main matches 1 \
as @n[type=item_display,tag=aj.rainy_night.root,distance=..3] on passengers run data modify entity @s Glowing set value 1b

summon interaction 1 64 -109 \
    { \
        Tags:["story.chapter_1.mq.2.act","interaction.sound.default"], \
        height:2, \
        UUID:[I; 22, 313, 55, 11] \
    }

scoreboard players set story.chapter_1.mq.2 story.chapter_1 1