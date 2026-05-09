scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color: [0.0f, 0.75f, 0.75f], scale: 1.5f, to_color: [0.0f, 0.75f, 1.0f]} ^ ^ ^4 0 0 0 0 0 force @a

particle trial_spawner_detection_ominous ^ ^ ^4 0.1 0.1 0.1 0 2 normal @a

execute \
    rotated ~3 0 run \
function monsters:chapter_1/abyssal_black_knight/1/fx