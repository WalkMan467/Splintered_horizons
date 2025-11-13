scoreboard players set #boss_area.chapter_2.elekiel global.main 0
scoreboard players set #bossfight.chapter_2.act.setup global.main 1
scoreboard players set @s player.detect.is_bossfight 0

schedule clear monsters:bossfight/chapter_2/elekiel/loop

bossbar remove minecraft:monsters.elekiel

stopsound @a record minecraft:bgm.tunetank_meridian

execute as @a run function music:chapter_2/bossfight/2/reset

scoreboard players set #bossfight.chapter_2.act.setup global.main 1

function monsters:chapter_2/elekiel/3/reset
execute as @e[tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run function monsters:chapter_2/elekiel/2/vampire_flower/kill
tag @a remove monsters.elekiel.2.vampire_flower.target

function monsters:chapter_2/elekiel/1/7

bossbar remove chapter_2.elekiel.2
bossbar remove chapter_2.elekiel.3

execute on passengers as @n[tag=aj.yibb_tstll.root,type=item_display] run function animated_java:yibb_tstll/remove/this

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
kill 000000fb-0000-0228-0000-000100000018
execute positioned 912 60 2018 run kill @e[distance=..60,type=experience_orb]

tp @a -916 60 2761 180 0

schedule clear monsters:chapter_2/elekiel/main

schedule function world_area:chapter_2/temple_of_light/bossfight/bossfight_area/main 1t