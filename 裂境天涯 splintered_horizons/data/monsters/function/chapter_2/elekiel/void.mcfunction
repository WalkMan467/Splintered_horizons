# Executing commands too far from the player

function animated_java:boss_1/remove/all

bossbar remove minecraft:monsters.elekiel

scoreboard players set #monster.bossfight.chapter_2.elekiel.act.enable global.main 1
scoreboard players set #boss_area.chapter_2.elekiel global.main 0

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.casting

scoreboard players reset #repeat global.main
scoreboard players reset $timer monster.elekiel.1.terrain
scoreboard players reset $summon monster.elekiel.1.terrain
scoreboard players reset #temp.2 global.main

stopsound @a record minecraft:bgm.tunetank_meridian

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
advancement grant @a only monsters:chapter_2/elekiel/1/battlefield/normal

tp 00000100-0000-0080-0000-008000000001 ~ -255 ~
kill 00000100-0000-0080-0000-008000000001
kill 000000fb-0000-0228-0000-000100000018

execute \
    in minecraft:overworld \
    positioned 912 55 2018 run \
function sys:add_death_point

scoreboard players set @a monster.elekiel.player_die 0

bossbar remove chapter_2.elekiel.2
bossbar remove chapter_2.elekiel.3

function monsters:chapter_2/elekiel/3/reset
function monsters:chapter_2/elekiel/1/timer/reset
schedule clear monsters:chapter_2/elekiel/1/terrain/detect
schedule function monsters:chapter_2/elekiel/1/terrain/lock 1t

execute \
    as @e[distance=0..,tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run \
function monsters:chapter_2/elekiel/2/vampire_flower/kill
tag @a remove monsters.elekiel.2.vampire_flower.target

execute \
    as @a run \
attribute @s safe_fall_distance modifier remove monsters.elekiel.1.kill
tag @a remove monster.elekiel.1.kill
tag @a remove monster.elekiel.1.skip

execute \
    positioned 912 60 2018 run \
kill @e[distance=..60,type=experience_orb]

schedule clear monsters:chapter_2/elekiel/main