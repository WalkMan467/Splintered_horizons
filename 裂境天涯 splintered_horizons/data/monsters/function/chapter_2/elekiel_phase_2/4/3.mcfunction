scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 1
scoreboard players reset #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting

bossbar add chapter_2.elekiel_phase_2.4 {"translate": "chapter_2.elekiel_phase_2.4.casting","fallback": "BOSS 蓄力中..."}
bossbar set chapter_2.elekiel_phase_2.4 max 200
bossbar set chapter_2.elekiel_phase_2.4 color yellow

execute \
    at 0020ac89-fe15-d2ca-0024-d629fff9b4fb \
    if entity @n[tag=mob.elekiel.2.crack,distance=..8,type=minecraft:item_display] \
    facing -916 60 2750 \
    rotated ~ 0 \
    positioned ^ ^ ^9 run \
function particle:portal/crack/use

execute \
    at 0020ac89-fe15-d2ca-0024-d629fff9b4fb \
    unless entity @n[tag=mob.elekiel.2.crack,distance=..8,type=minecraft:item_display] run \
function particle:portal/crack/use

execute \
    as @p[tag=monster.elekiel_phase_2.4.portal.target] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/effect/false

execute \
    as @a[sort=arbitrary,distance=..60] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/4

kill 0020ac89-fe15-d2ca-0024-d629fff9b4fb