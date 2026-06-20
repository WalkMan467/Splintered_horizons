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
function aj:segrina/summon {args:{animation: 'spawn',start_animation: true}}

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

scoreboard players set #skill.4.enabled bossfight.segrina.main 1

gamemode adventure @a[tag=chapter_2.segrina.lose]

tag @a remove monster.segrina.skill.4

scoreboard players set skill.1 monster.segrina.cd 300
scoreboard players set skill.2 monster.segrina.cd 800
scoreboard players set skill.3 monster.segrina.cd 1300
scoreboard players reset @s monster.segrina.skill.4.invincible

scoreboard players set @a player.spawnpoint.dimension 0
scoreboard players set @a player.spawnpoint.pos.x 76200
scoreboard players set @a player.spawnpoint.pos.y 10700
scoreboard players set @a player.spawnpoint.pos.z 64900

scoreboard players reset #bossfight.segrina.skills.3 monster.segrina.cd

execute \
    as @a run \
attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.1

execute \
    as @a run \
attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.2

execute \
    as @a run \
attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.3

execute \
    as @a run \
function bossfight:chapter_2/segrina/skills/4/7

execute \
    as @a at @s run \
function bossfight:chapter_2/segrina/skills/4/8

execute \
    as @a at @s run \
function bossfight:chapter_2/segrina/skills/4/9

scoreboard players set #bossfight global.main 1
scoreboard players set #boss_area.chapter_2.segrina global.main 1

execute as @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=zombie] at @s run tp @s ~ -255 ~
kill @e[sort=arbitrary,distance=0..60,tag=monster.segrina.skill.4.monster,type=zombie]

schedule function bossfight:chapter_2/segrina/skills/main 1t
schedule function bossfight:chapter_2/segrina/loop 1t