scoreboard players set skill.1 monster.segrina.cd 1000
scoreboard players reset @s monster.segrina.skill.1.casting
bossbar remove monster.segrina.skill.1.casting

kill @e[distance=0..,tag=monster.segrina.1.ball,type=item]
scoreboard players reset @a monster.segrina.skill.1.ball.dark
scoreboard players reset @a monster.segrina.skill.1.ball.light
scoreboard players reset @a monster.segrina.skill.1.ball.atk
scoreboard players reset @a monster.segrina.skill.1.ball.dmg_taken
scoreboard players reset @a monster.segrina.skill.1.ball
scoreboard players reset @s monster.segrina.skill.1.dmg

tag @s remove chapter_2.segrina.1
tag @s remove chapter_2.segrina.4