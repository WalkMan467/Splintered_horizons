# bossbar
bossbar add monsters.segrina [{"translate":"monsters.segrina","fallback": "永劫輪迴的墮落者「阿斯尼亞」"}]
bossbar set minecraft:monsters.segrina color red
bossbar set minecraft:monsters.segrina style notched_10

title @a[distance=..60] title [{"translate": "monsters.segrina","fallback":"永劫輪迴的墮落者「阿斯尼亞」","color": "red"}]

execute \
    positioned 762 107 642 run \
title @a[distance=..60] subtitle [{"text":""}]

execute \
    positioned 762 107 642 run \
title @a[distance=..60] times 20 20 20

execute \
    positioned 762 107 642 \
    as @a[distance=..60] at @s run \
playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 1

execute \
    positioned 762 107 642 \
    as @e[sort=arbitrary,distance=0..,tag=monster.segrina.skill.4.monster,type=skeleton] at @s run \
tp @s ~ -255 ~

execute \
    positioned 762 107 642 run \
kill @e[sort=arbitrary,distance=0..,tag=monster.segrina.skill.4.monster,type=skeleton]

execute \
    rotated ~ 0 \
    positioned 762 107 642 run \
function animated_java:segrina/summon {args:{animation: 'spawn',start_animation: true}}

execute \
    positioned 762 107 642 run \
ride @n[sort=arbitrary,distance=..1,tag=aj.segrina.root,type=item_display] mount ffff8285-0000-0c33-0000-5a5c0162349d

effect give ffff8285-0000-0c33-0000-5a5c0162349d instant_damage 1 27 true

attribute ffff8285-0000-0c33-0000-5a5c0162349d minecraft:movement_speed modifier add spawn -1 add_multiplied_total
attribute ffff8285-0000-0c33-0000-5a5c0162349d minecraft:jump_strength modifier add spawn -1 add_multiplied_total
attribute ffff8285-0000-0c33-0000-5a5c0162349d minecraft:attack_damage modifier add spawn -1 add_multiplied_total

# bossbar
bossbar add monsters.segrina [{"translate":"monsters.segrina","fallback": "永劫輪迴的墮落者「阿斯尼亞」"}]
bossbar set minecraft:monsters.segrina color red
bossbar set minecraft:monsters.segrina style notched_10

gamemode adventure @a[tag=chapter_2.segrina.lose]

tag @a remove monster.segrina.skill.4

scoreboard players set skill.1 monster.segrina.cd 100
scoreboard players set skill.2 monster.segrina.cd 400
scoreboard players set skill.3 monster.segrina.cd 340
scoreboard players set skill.4 monster.segrina.cd 640
scoreboard players reset @s monster.segrina.skill.4.invincible

execute \
    as @a run \
function monsters:chapter_2/segrina/4/7

scoreboard players set #bossfight global.main 1
scoreboard players set #boss_area.chapter_2.segrina global.main 1

execute as @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=zombie] at @s run tp @s ~ -255 ~
kill @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=zombie]

schedule function monsters:chapter_2/segrina/main 1t
schedule function bossfight:chapter_2/segrina/loop 1t