# ===================================================
# 腐蝕者 技能1 分鏡 / corroder skill 1 timeline

    ## Guide [ function monsters:chapter_3/corroder/1/main ] >>> 腐蝕者 技能1 分鏡 / corroder skill 1 timeline
    ## Guide [ function monsters:chapter_3/corroder/main ] >>> 腐蝕者 主程式 / corroder main
    ## Guide [ function monsters:chapter_3/corroder/1/1 ] >>> 腐蝕者 技能1 預告軌跡 / corroder skill 1 telegraph
    ## Guide [ function monsters:chapter_3/corroder/1/2 ] >>> 腐蝕者 技能1 直線傷害 / corroder skill 1 line damage
    ## Guide [ function monsters:chapter_3/corroder/1/end ] >>> 腐蝕者 技能1 收尾 / corroder skill 1 finish
    ## Guide [ function monsters:chapter_3/corroder/1/sumon_raycast ] >>> 腐蝕者 技能1 生成雷射展示體 / corroder skill 1 spawn beam display

# ===================================================

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_3/corroder/1/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/corroder/1/1

execute \
    if score @s monster.skill.casting matches 21 run \
function monsters:chapter_3/corroder/1/1

execute \
    if score @s monster.skill.casting matches 41 \
    positioned ^ ^1 ^0.5 run \
function monsters:chapter_3/corroder/1/sumon_raycast

execute \
    if score @s monster.skill.casting matches 41 \
    positioned ^ ^1 ^1 run \
function particle:tunder_red/use {duration:10,spread:1}

execute \
    if score @s monster.skill.casting matches 46 \
    positioned ^ ^1 ^3 run \
function particle:tunder_red/use {duration:8,spread:1}

execute \
    if score @s monster.skill.casting matches 51 \
    positioned ^ ^1 ^5 run \
function particle:tunder_red/use {duration:5,spread:1}

execute \
    if score @s monster.skill.casting matches 56 \
    positioned ^ ^1 ^7 run \
function particle:tunder_red/use {duration:5,spread:1}

execute \
    if score @s monster.skill.casting matches 61 \
    positioned ^ ^1 ^9 run \
function particle:tunder_red/use {duration:5,spread:1}


execute \
    if score @s monster.skill.casting matches 41..101 run \
function monsters:chapter_3/corroder/1/2

execute \
    if score @s monster.skill.casting matches 101.. run \
function monsters:chapter_3/corroder/1/end