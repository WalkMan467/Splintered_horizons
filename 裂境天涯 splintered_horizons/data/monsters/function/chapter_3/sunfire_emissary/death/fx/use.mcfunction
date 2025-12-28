scoreboard players reset @s monster.sunfire_emissary.death.fx
function monsters:chapter_3/sunfire_emissary/death/fx/guide

scoreboard players add @s monster.sunfire_emissary.death.timer 1

execute \
    if score @s monster.sunfire_emissary.death.timer matches 40.. run \
function monsters:chapter_3/sunfire_emissary/death/explosion/use