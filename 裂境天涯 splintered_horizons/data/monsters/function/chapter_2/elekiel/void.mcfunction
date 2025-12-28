# Executing commands too far from the player


execute \
    as @a at @s run \
function monsters:bossfight/chapter_2/elekiel/reset_player_die

function animated_java:boss_1/remove/all

bossbar remove minecraft:monsters.elekiel


scoreboard players set #boss_area.chapter_2.elekiel global.main 0
scoreboard players set @s player.detect.is_bossfight 0

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.casting

stopsound @a record minecraft:bgm.tunetank_meridian

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
advancement grant @a only monsters:chapter_2/elekiel/1/battlefield/normal

tp 00000100-0000-0080-0000-008000000001 ~ -255 ~
kill 00000100-0000-0080-0000-008000000001

scoreboard players set @a monster.elekiel.player_die 0

bossbar remove chapter_2.elekiel.2
bossbar remove chapter_2.elekiel.3

function monsters:chapter_2/elekiel/3/reset

execute \
    as @e[tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run \
function monsters:chapter_2/elekiel/2/vampire_flower/kill
tag @a remove monsters.elekiel.2.vampire_flower.target

function monsters:chapter_2/elekiel/1/7

execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
function music:chapter_2/bossfight/2/reset


execute on passengers \
    as @n[tag=aj.boss_1.root,type=item_display] run \
function animated_java:boss_1/remove/this

advancement revoke @a only monsters:chapter_2/elekiel/1/battlefield/fire
kill 000000fb-0000-0228-0000-000100000018

execute \
    positioned 912 60 2018 run \
kill @e[distance=..60,type=experience_orb]

summon interaction 912 60 2018 {UUID:[I; 2541, 123, 1, 1],Tags:["world_area.chapter_2.temple_of_light.bossfight.act"],height:2}

schedule clear monsters:chapter_2/elekiel/main