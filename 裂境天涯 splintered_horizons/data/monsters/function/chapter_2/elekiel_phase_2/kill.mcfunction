stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.special.1 monster.elekiel_phase_2.cd

scoreboard players reset skill.1 monster.elekiel_phase_2.cd
scoreboard players reset skill.2 monster.elekiel_phase_2.cd

schedule clear monsters:chapter_2/elekiel_phase_2/main

execute as @a run attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect

execute as @e[tag=mob.elekiel.display,type=!player] on passengers run kill @s
execute as @e[tag=mob.elekiel.display,type=!player] on passengers on passengers run kill @s

kill @e[tag=mob.elekiel.display,type=!player]

tag @a remove monster.elekiel_phase_2.effect

advancement revoke @a only mob:elekiel/2/in
advancement revoke @a only mob:elekiel/2/out
effect clear @s glowing