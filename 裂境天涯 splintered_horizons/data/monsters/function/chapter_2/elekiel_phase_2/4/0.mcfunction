scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 0

function monsters:chapter_2/elekiel_phase_2/4/target/use

execute \
    as @a[distance=..60] at @s run \
playsound minecraft:voice.glitch_effect_1 voice @s ~ ~1 ~ 1 1

execute \
    as @p[tag=monster.elekiel_phase_2.4.target] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/1

tag @a remove monster.elekiel_phase_2.4.target