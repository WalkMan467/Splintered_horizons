function monsters:chapter_2/elekiel/3/tp

function monsters:chapter_2/elekiel/3/fx


execute \
    store result bossbar chapter_2.elekiel.3 value run \
scoreboard players get global monster.elekiel.3.timer
bossbar set chapter_2.elekiel.3 color green


execute \
    on target run \
tag @s[tag=!chapter_2.elekiel.lose] add this

execute \
    as @e[type=area_effect_cloud,tag=monster.elekiel.3.player_pos.save,limit=1,tag=!this] \
    if score @s monster.elekiel.3.player_pos.save.timer = @p[tag=this] player.id run \
tag @s add this


execute \
    on target \
    if entity @s[tag=this] at @n[type=area_effect_cloud,tag=monster.elekiel.3.player_pos.save,tag=this] run \
tp @s ~ ~ ~

tag @e[type=area_effect_cloud,tag=monster.elekiel.3.player_pos.save,limit=1,tag=this] remove this

execute \
    on target run \
tag @s[tag=this] remove this