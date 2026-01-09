playsound minecraft:entity.warden.sonic_boom voice @s ~ ~1 ~ 1 1

bossbar remove chapter_2.elekiel_phase_2.4
scoreboard players reset #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting

tag @s[tag=!animation,gamemode=spectator] remove monster.elekiel_phase_2.4.kill
tag @s[tag=chapter_2.elekiel_phase_2.lose] remove monster.elekiel_phase_2.4.kill
tag @s[gamemode=creative] remove monster.elekiel_phase_2.4.kill

tag @s add forced_interrupt_animation
function players:stop_animation

kill @s[tag=monster.elekiel_phase_2.4.kill]
tag @s[tag=monster.elekiel_phase_2.4.kill] add chapter_2.elekiel_phase_2.lose
tag @s remove monster.elekiel_phase_2.4.kill