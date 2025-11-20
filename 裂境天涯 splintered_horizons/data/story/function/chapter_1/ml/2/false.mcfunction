scoreboard players set #story.chapter_1.ml.2_temp global.main 0
scoreboard players set story.chapter_1.ml.2 story.chapter_1 1

# Change the Weather \
{
    execute if score #weather.temp global.main matches 0 run \
    weather clear

    execute if score #weather.temp global.main matches 1 run \
    weather rain

    execute if score #weather.temp global.main matches 2 run \
    weather thunder
#\
}

kill 00000016-0000-0139-0000-00370000000b
kill @e[tag=story.chapter_1.ml.2]

execute as @n[tag=aj.rainy_night.root,limit=1,distance=..10,type=item_display] run \
function animated_java:rainy_night/remove/this