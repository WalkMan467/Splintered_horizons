
execute \
    if entity @s[tag=monsters.elekiel.2.vampire_flower.target] run \
bossbar remove chapter_2.elekiel.2

execute \
    if entity @s[tag=monsters.elekiel.2.vampire_flower.target] run \
advancement revoke @s only monsters:chapter_2/elekiel/2/vampire_flower/player_kill

execute \
    if entity @s[tag=monsters.elekiel.2.vampire_flower.target] run \
attribute @s max_health modifier remove monsters.elekiel.2.vampire_flower.health
tag @s remove monsters.elekiel.2.vampire_flower.target


execute \
    unless score #boss_area.chapter_2.elekiel global.main matches 1.. run \
return 0

tag @s add chapter_2.elekiel.lose
gamemode spectator @a[tag=chapter_2.elekiel.lose]