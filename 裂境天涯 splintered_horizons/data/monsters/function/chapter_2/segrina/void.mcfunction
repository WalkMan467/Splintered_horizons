stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.segrina.cd
scoreboard players reset skill.2 monster.segrina.cd
scoreboard players reset skill.3 monster.segrina.cd
scoreboard players reset skill.4 monster.segrina.cd

scoreboard players reset @s monster.segrina.skill.4.effect
scoreboard players set #bossfight global.main 0


tag @a remove monster.segrina.skill.2.raycast.player
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.temp
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.player

execute \
    as @a at @s run \
function monsters:chapter_2/segrina/4/8

execute \
    on passengers \
    as @s[tag=aj.segrina.root,type=item_display] run \
function animated_java:segrina/remove/this

function monsters:bossfight/chapter_2/act/segrina/1/false

execute \
    as @a run \
attribute @s minecraft:max_health base reset

tp ffff8285-0000-0c33-0000-5a5c0162349d ~ -255 ~
kill ffff8285-0000-0c33-0000-5a5c0162349d

bossbar remove minecraft:monsters.segrina
bossbar remove monster.segrina.skill.1.casting

scoreboard players set #boss_area.chapter_2.segrina global.main 0

schedule clear monsters:chapter_2/segrina/main

kill 01dc4318-ed62-7e6b-0003-873f004ff9e9
kill 0023442d-ed62-7e6b-0003-873f004ff9e9

kill @e[sort=arbitrary,distance=..120,limit=20,tag=monster.segrina.1.ball,type=item]

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=skeleton] at @s run \
tp @s ~ -255 ~

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=skeleton] at @s run \
kill @s

scoreboard players reset @s monster.segrina.skill.4.invincible
execute \
    as @a run \
function monsters:chapter_2/segrina/4/7

execute \
    positioned 725 107 605 \
    as @a[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] at @s run \
function monsters:chapter_2/segrina/4/5

tag @a remove monster.segrina.skill.4

execute \
    as @a[distance=..60] at @s run \
function cse:status_effects/apply/soul_restraint/clear