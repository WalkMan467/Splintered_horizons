playsound minecraft:entity.warden.sonic_charge voice @s ~ ~1 ~ 1 0.5


bossbar add chapter_2.elekiel_phase_2.4 {"translate": "chapter_2.elekiel_phase_2.4.casting","fallback": "BOSS 蓄力中..."}
bossbar set chapter_2.elekiel_phase_2.4 max 200
bossbar set chapter_2.elekiel_phase_2.4 color yellow

scoreboard players reset #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting

tag @s add temp
tag @s[tag=!animation,gamemode=spectator] remove temp

tag @s[tag=temp] add monster.elekiel_phase_2.4.death_timer

tag @s remove temp