scoreboard players reset global monster.elekiel.3.timer


execute \
    as 00000015-0000-0002-0000-003700000080 \
    on passengers run \
kill @s
kill 00000015-0000-0002-0000-003700000080

kill @e[distance=0..,tag=monster.elekiel.3.player_pos.save,type=area_effect_cloud]

scoreboard players reset $monster.chapter_2.elekiel.3.cd monster.elekiel.skill.cd
scoreboard players reset .global monster.elekiel.3.player_pos.save.timer