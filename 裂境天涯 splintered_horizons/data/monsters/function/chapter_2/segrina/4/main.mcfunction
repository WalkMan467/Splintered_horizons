scoreboard players add @s monster.segrina.skill.4.casting 1
function monsters:chapter_2/segrina/interface/in

# 技能提示
execute \
    if score @s monster.segrina.skill.4.casting matches 1 run \
function monsters:chapter_2/segrina/4/0

# 生成怪物
execute \
    if score @s monster.segrina.skill.4.casting matches 40 run \
function monsters:chapter_2/segrina/4/1

# 玩家無敵狀態更新
execute \
    as @a[tag=monster.segrina.bossfight.interface,tag=!eliminate] at @s run \
function monsters:chapter_2/segrina/4/7

execute \
    if score @s monster.segrina.skill.4.casting matches 300.. run \
function monsters:chapter_2/segrina/4/end

function monsters:chapter_2/segrina/interface/out