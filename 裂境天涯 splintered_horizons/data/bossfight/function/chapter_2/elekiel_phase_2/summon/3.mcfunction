bossbar add monsters.elekiel_phase_2 [{"translate":"monsters.elekiel","fallback": "「空之支配者」伊萊克爾"}]
bossbar set minecraft:monsters.elekiel_phase_2 color red
bossbar set minecraft:monsters.elekiel_phase_2 style notched_10

advancement grant @a only music:chapter_2/bossfight/3/play

execute \
    positioned -916 60 2750 run \
title @a[distance=..60] title [{"translate": "monsters.elekiel_phase_2.title","color": "red"}]

execute \
    positioned -916 60 2750 run \
title @a[distance=..60] subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monsters.elekiel","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]

execute \
    positioned -916 60 2750 run \
title @a[distance=..60] times 20 20 20

execute \
    positioned -916 60 2750 \
    as @a[distance=..60] at @s run \
playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 1 1

function aj:boss_1/summon {args: {animation: 'idle', start_animation: true}}

execute \
    as @n[distance=..1,sort=arbitrary,tag=aj.boss_1.root,type=item_display] \
    on passengers run \
data modify entity @s teleport_duration set value 5

ride @n[tag=aj.boss_1.root,type=item_display] mount @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton]

effect give @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] instant_damage 1 27 true

gamemode adventure @a[tag=chapter_2.elekiel_phase_2.lose]
tag @a remove chapter_2.elekiel_phase_2.lose
tag @a remove monster.elekiel_phase_2.2.cage.imprison.last_tick
tag @a remove monster.elekiel_phase_2.4.portal.target

scoreboard players set skill.1 monster.elekiel_phase_2.cd 100
scoreboard players set skill.2 monster.elekiel_phase_2.cd 300
scoreboard players set skill.4 monster.elekiel_phase_2.cd 740
scoreboard players set skill.5 monster.elekiel_phase_2.cd 700
scoreboard players set @s player.detect.is_bossfight 1
scoreboard players set #boss_area.chapter_2.elekiel_phase_2 global.main 1

scoreboard players set @a player.spawnpoint.dimension 0
scoreboard players set @a player.spawnpoint.pos.x 91200
scoreboard players set @a player.spawnpoint.pos.y 6000
scoreboard players set @a player.spawnpoint.pos.z 200000


schedule function bossfight:chapter_2/elekiel_phase_2/loop 1t
schedule function monsters:chapter_2/elekiel_phase_2/main 1t