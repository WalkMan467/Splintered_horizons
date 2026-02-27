title @a[sort=arbitrary,distance=..60] title {"translate":"monster.segrina.skill.2","fallback": "技能2【連結詛咒】"}
title @a[sort=arbitrary,distance=..60] times 20 20 20

execute \
    as @a[sort=arbitrary,distance=..60] at @s run \
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 1

execute \
    store result score #monster.segrina.skill.2.player monster.segrina.cd \
if entity @a[sort=arbitrary,distance=0..,tag=!chapter_2.segrina.lose]

execute \
    unless score #monster.segrina.skill.2.player monster.segrina.cd matches 2.. run \
tag @r[distance=0..,sort=arbitrary,tag=!chapter_2.segrina.lose] add monster.segrina.skill.2.raycast.player

execute \
    if score #monster.segrina.skill.2.player monster.segrina.cd matches 2.. run \
tag @a[sort=arbitrary,distance=0..] remove monster.segrina.2.target

execute \
    if score #monster.segrina.skill.2.player monster.segrina.cd matches 2.. run \
tag @a[sort=arbitrary,distance=0..] add monster.segrina.2.target

execute \
    if score #monster.segrina.skill.2.player monster.segrina.cd matches 2.. run \
tag @a[sort=arbitrary,distance=0..,tag=!animation,gamemode=spectator] remove monster.segrina.2.target

execute \
    if score #monster.segrina.skill.2.player monster.segrina.cd matches 2.. run \
tag @a[sort=arbitrary,distance=0..,tag=chapter_2.segrina.lose] remove monster.segrina.2.target

tag @p[sort=arbitrary,distance=0..,tag=monster.segrina.2.target] add monster.segrina.skill.2.raycast.player

title @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.player] subtitle {"translate":"monster.segrina.skill.2.raycast.player","fallback": "你被選中了","color":"red"}
title @p[sort=arbitrary,distance=0..,tag=!monster.segrina.skill.2.raycast.player] subtitle ""

tag @a[sort=arbitrary,distance=0..] remove monster.segrina.2.target