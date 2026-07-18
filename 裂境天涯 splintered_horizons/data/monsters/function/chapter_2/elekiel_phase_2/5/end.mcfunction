# warn-off-file target-selector-no-dimension

scoreboard players set skill.5 monster.elekiel_phase_2.cd 280

scoreboard players reset @s monster.elekiel_phase_2.skill.5.casting
tag @s remove chapter_2.elekiel_phase_2.5

function aj:memory_afterimage/remove/all

kill @e[sort=arbitrary,distance=..120,tag=monster.elekiel_phase_2.5.act,type=interaction]