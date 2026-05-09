
scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color:[1.000,0.702,0.000],to_color:[1.000,1.000,1.000],scale:1.5} ^ ^ ^4 0 0 0 0 0 normal

execute \
    rotated ~3 0 run \
function monsters:chapter_2/apostle_of_eternity/1/fx_range