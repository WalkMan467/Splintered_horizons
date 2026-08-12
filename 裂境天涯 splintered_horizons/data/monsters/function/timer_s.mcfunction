# Finality Conversion

scoreboard players remove @e[type=!player,type=!#minecraft:dummy_mob,scores={monster.effect.finality=0..}] monster.effect.finality 1
scoreboard players reset @e[type=!player,type=!#minecraft:dummy_mob,scores={monster.effect.finality=-1}] monster.effect.finality

# Timer
scoreboard players remove @e[type=text_display,scores={monster.elekiel.2.timer=0..}] monster.elekiel.2.timer 1
scoreboard players remove @a[scores={monster.elekiel.2.player_timer=0..}] monster.elekiel.2.player_timer 1


execute \
    if score .global monster.elekiel.3.player_pos.save.timer matches 0 run \
kill @e[tag=monster.elekiel.3.player_pos.save,type=area_effect_cloud]

execute \
    if score .global monster.elekiel.3.player_pos.save.timer matches 0 \
    as @a[tag=!chapter_2.elekiel.lose] at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
function bossfight:chapter_2/elekiel/skills/3/save_pos

execute \
    if score .global monster.elekiel.3.player_pos.save.timer matches 0.. run \
scoreboard players remove .global monster.elekiel.3.player_pos.save.timer 1


execute \
    as @a at @s run \
function bossfight:chapter_2/elekiel/skills/3/clock

execute \
    if score global monster.elekiel.3.timer matches 0.. run \
scoreboard players remove global monster.elekiel.3.timer 1


execute \
    as @e[type=text_display,tag=monsters.elekiel.2.vampire_flower.timer] run \
function bossfight:chapter_2/elekiel/skills/2/vampire_flower/text

schedule function monsters:timer_s 1s