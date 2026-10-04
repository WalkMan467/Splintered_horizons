# ===================================================
# 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/main ] >>> 深淵射手 技能1 分鏡 / explosion arrow skeleton skill 1 timeline
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main ] >>> 深淵射手 主程式 / explosion arrow skeleton main
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/0 ] >>> 深淵射手 技能1 換上爆裂箭 / explosion arrow skeleton skill 1 load arrow
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/1/1 ] >>> 深淵射手 技能1 收回爆裂箭 / explosion arrow skeleton skill 1 unload arrow
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/end ] >>> 深淵射手 施法 結束並重設冷卻 / explosion arrow skeleton cast end

# ===================================================

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_1/explosion_arrow_skeleton/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_1/explosion_arrow_skeleton/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_1/explosion_arrow_skeleton/1/0


execute \
    if score @s monster.skill.casting matches 160 run \
function monsters:chapter_1/explosion_arrow_skeleton/1/1