execute if score #difficulty global.main matches 0 if entity @n[distance=..60,tag=aj.boss_1.root,type=item_display] run function animated_java:boss_1/remove/all

execute if score #difficulty global.main matches 0 run return 0
execute if entity 00000014-0000-0014-0000-000100000019 run return 0
execute unless score abyss_soulcutter monster.boss.spawn matches 1.. run return 0

execute unless entity @p[distance=..60,gamemode=!spectator] unless entity @p[tag=animation] run return 0

function monsters:summon/chapter_2/abyss_soulcutter