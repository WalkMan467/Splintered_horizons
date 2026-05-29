function animated_java:segrina/remove/all

stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.segrina.cd
scoreboard players reset skill.2 monster.segrina.cd
scoreboard players reset skill.3 monster.segrina.cd
scoreboard players reset skill.4 monster.segrina.cd

scoreboard players reset @s monster.segrina.skill.4.effect
scoreboard players set #bossfight global.main 0
# 清除鎖 1 血
execute \
    as @a at @s run \
function monsters:chapter_2/segrina/4/8

tag @a remove monster.segrina.skill.2.raycast.player
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.temp
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.player

function bossfight:chapter_2/act/segrina/1/false

tag @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] add death

scoreboard players reset @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] monster.segrina.skill.1.casting
scoreboard players reset @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] monster.segrina.skill.2.casting
scoreboard players reset @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] monster.segrina.skill.3.casting
scoreboard players reset @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] monster.segrina.skill.4.casting

bossbar remove minecraft:monsters.segrina
bossbar remove monster.segrina.skill.1.casting

schedule clear monsters:chapter_2/segrina/main

kill 01dc4318-ed62-7e6b-0003-873f004ff9e9
kill 0023442d-ed62-7e6b-0003-873f004ff9e9

tp @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] 762 -255 642
kill @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie]

tag @a remove monster.segrina.bossfight.player

execute \
    positioned 762 107 642 run \
kill @e[sort=arbitrary,distance=..120,tag=monster.segrina.1.ball,type=item]

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=0..120,tag=monster.segrina.skill.4.monster,type=skeleton] at @s run \
tp @s ~ -255 ~

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=0..120,tag=monster.segrina.skill.4.monster,type=skeleton] at @s run \
kill @s

tag @a remove monster.segrina.bossfight.interface