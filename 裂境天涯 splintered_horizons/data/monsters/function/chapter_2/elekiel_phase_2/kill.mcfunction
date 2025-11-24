stopsound @a record minecraft:bgm.tunetank_meridian

scoreboard players reset skill.1 monster.elekiel_phase_2.cd
scoreboard players reset skill.2 monster.elekiel_phase_2.cd
scoreboard players reset skill.3 monster.elekiel_phase_2.cd
scoreboard players reset skill.4 monster.elekiel_phase_2.cd

execute on passengers as @s[tag=aj.boss_1.root,type=item_display] run function animated_java:boss_1/remove/this

advancement grant @a only music:chapter_2/bossfight/3/reset

bossbar remove minecraft:monsters.elekiel_phase_2

schedule clear monsters:chapter_2/elekiel_phase_2/main

execute as @a run attribute @s attack_damage modifier remove monster.elekiel_phase_2.effect

execute as @p unless score #weapons:monument/area_2 global.main matches 1.. run function weapons:get/monument/area_2

execute as @e[tag=monster.elekiel_phase_2.3,tag=monster.forest_messenger,type=skeleton] at @s run function monsters:chapter_2/forest_messenger/cocoon/remove

execute as @a at @s run function particle:portal/crack/tp/remove

execute as @e[tag=mob.elekiel.display,type=!player] on passengers run kill @s
execute as @e[tag=mob.elekiel.display,type=!player] on passengers on passengers run kill @s

kill @e[tag=mob.elekiel.display,type=!player]
execute as @e[type=!#minecraft:dummy_mob,tag=monster.elekiel_phase_2.3,type=!player] on passengers run kill @s
kill @e[tag=monster.elekiel_phase_2.3,type=!#minecraft:dummy_mob,type=!player]

effect clear @a[scores={monster.elekiel_phase_2.skill.4.effect.void=0..}] glowing

tag @a remove monster.elekiel_phase_2.effect
tag @a remove monster.elekiel_phase_2.4.effect.target
tag @a remove monster.elekiel_phase_2.skill.2.target
tag @a remove chapter_2.elekiel_phase_2.4
tag @a remove monster.elekiel_phase_2.4.death_timer

bossbar remove chapter_2.elekiel_phase_2.4
scoreboard players reset #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting

scoreboard players reset @a entity.dummy_mob
scoreboard players reset @a monster.elekiel_phase_2.skill.4.effect.void
scoreboard players reset #monster.elekiel_phase_2.skill.4.portal.actived global.main
scoreboard players set @s player.detect.is_bossfight 0
scoreboard players set #boss_area.chapter_2.elekiel_phase_2 global.main 0

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.casting

scoreboard players reset $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd
scoreboard players reset $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd

execute positioned -916 60 2750 run kill @e[type=experience_orb,distance=..60]
execute positioned -916 60 2750 run tp @a[distance=..60] 1109 82 373

advancement revoke @a only monsters:chapter_2/elekiel_phase_2/2/in
advancement revoke @a only monsters:chapter_2/elekiel_phase_2/2/out