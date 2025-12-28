scoreboard players reset @s monster.sun_of_the_abyssal_eclipse.death.fx
function monsters:other/sun_of_the_abyssal_eclipse/death/fx/main

scoreboard players add @s monster.sun_of_the_abyssal_eclipse.death.timer 1

execute \
    if score @s monster.sun_of_the_abyssal_eclipse.death.timer matches 40.. run \
function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/use