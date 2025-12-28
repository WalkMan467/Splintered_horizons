
execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 1 run \
tag @a remove monsters.elekiel.2.vampire_flower.target

execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 1 \
    as @a[distance=..60] at @s run \
playsound minecraft:entity.warden.sonic_charge voice @s ~ ~1 ~ 1 1.5


execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 1 run \
title @a[distance=..60] times 10 20 0

execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 1 run \
title @a[distance=..60] title {"text":"\uE001","font":"minecraft:screen"}


execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 30 run \
function monsters:chapter_2/elekiel/2/0


execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 30 \
    as @a at @s run \
function monsters:chapter_2/elekiel/2/2


execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 30.. run \
function monsters:chapter_2/elekiel/2/3

execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 30.. \
    unless entity @n[tag=monsters.elekiel.2.vampire_flower.hit_box,type=slime] run \
function monsters:chapter_2/elekiel/cast/end


execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 401.. run \
function monsters:chapter_2/elekiel/2/end