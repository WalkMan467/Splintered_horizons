# 距離玩家過遠執行指令

execute as @a at @s run function monsters:bossfight/chapter_2/elekiel/reset_player_die

function animated_java:yibb_tstll/remove/all

scoreboard players set #boss_area.chapter_2.elekiel global.main 0

stopsound @a record minecraft:bgm.tunetank_meridian

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
advancement grant @a only monsters:chapter_2/elekiel/1/battlefield/normal

tp 00000100-0000-0080-0000-008000000001 ~ -255 ~
kill 00000100-0000-0080-0000-008000000001

scoreboard players set @a monster.elekiel.player_die 0

function monsters:chapter_2/elekiel/3/reset
execute as @e[tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run function monsters:chapter_2/elekiel/2/vampire_flower/kill
tag @a remove monsters.elekiel.2.vampire_flower.target

function monsters:chapter_2/elekiel/1/7
execute as @a at @s if biome ~ ~ ~ #world_area:chapter_2_bossfight run function music:chapter_2/bossfight/2/reset

execute on passengers as @n[tag=aj.yibb_tstll.root,type=item_display] run function animated_java:yibb_tstll/remove/this

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
kill 000000fb-0000-0228-0000-000100000018

summon interaction 912 60 2018 {UUID:[I; 2541, 123, 1, 1],Tags:["world_area.chapter_2.temple_of_light.bossfight.act"],height:2} 