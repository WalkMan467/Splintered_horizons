scoreboard players add @s monster.elekiel_phase_2.skill.4.casting 1

# 顯示技能敘述
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 1 run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/0

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 1..128 \
    as @p[tag=monster.elekiel_phase_2.4.portal.target] at @s run \
tp 0020ac89-fe15-d2ca-0024-d629fff9b4fb ~ ~ ~

execute \
    as @e[distance=0..,sort=arbitrary,tag=mob.elekiel.2.crack,limit=2,type=item_display] at @s run \
tp @s ~ 60 ~ ~ 0

# 選中 1 名玩家 生成傳送門 1 與 給予 5 秒虛空狀態
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 28 run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/2

# 虛空狀態 結束 生成傳送門 2
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 128 run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/3

# BOSS 蓄力開始(總共 10 秒)
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 128..328 run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/5

# 爆炸前 1 秒提示聲
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 308 run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/6

# 10 秒後蓄力的爆炸特效
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 328 run \
function particle:technological_force_wave/use

# 10 秒後蓄力的爆炸傷害
execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 328 \
    as @a[sort=arbitrary,distance=..60] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/7


execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 400.. run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/end