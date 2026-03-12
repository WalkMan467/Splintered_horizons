stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.segrina.cd
scoreboard players reset skill.2 monster.segrina.cd
scoreboard players reset skill.3 monster.segrina.cd
scoreboard players reset skill.4 monster.segrina.cd

scoreboard players reset @s monster.segrina.skill.4.effect

tag @a remove monster.segrina.skill.2.raycast.player
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.temp
tag @a[sort=arbitrary,distance=..60] remove monster.segrina.skill.3.player

execute \
    on passengers \
    as @s[tag=aj.segrina.root,type=item_display] run \
function animated_java:segrina/remove/this


tp ffff8285-0000-0c33-0000-5a5c0162349d ~ -255 ~
kill ffff8285-0000-0c33-0000-5a5c0162349d

bossbar remove minecraft:monsters.segrina

scoreboard players set #boss_area.chapter_2.segrina global.main 0

kill 01dc4318-ed62-7e6b-0003-873f004ff9e9
kill 0023442d-ed62-7e6b-0003-873f004ff9e9

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
    as @a[distance=..60] at @s run \
function cse:status_effects/apply/soul_restraint/clear