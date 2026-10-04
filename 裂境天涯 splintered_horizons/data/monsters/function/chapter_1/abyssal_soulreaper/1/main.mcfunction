# ===================================================
# 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/main ] >>> 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/main ] >>> 深淵斷魂者 主程式 / abyssal soulreaper main
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/0 ] >>> 深淵斷魂者 技能1 蓄力 / abyssal soulreaper skill 1 charge
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/1 ] >>> 深淵斷魂者 技能1 揮斬 / abyssal soulreaper skill 1 swing
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/2 ] >>> 深淵斷魂者 技能1 斧頭旋轉 / abyssal soulreaper skill 1 axe spin
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/3 ] >>> 深淵斷魂者 技能1 移除屬性修飾 / abyssal soulreaper skill 1 clear modifiers
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/cast/end ] >>> 深淵斷魂者 施法 結束並重設冷卻 / abyssal soulreaper cast end

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_1/abyssal_soulreaper/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_1/abyssal_soulreaper/cast/end


execute \
    if score @s monster.skill.casting matches 2 run \
function monsters:chapter_1/abyssal_soulreaper/1/0


execute \
    if score @s monster.skill.casting matches 22 run \
function monsters:chapter_1/abyssal_soulreaper/1/1

execute \
    if score @s monster.skill.casting matches 22.. \
    as @e[tag=monster.abyssal_soulreaper.1.display,type=item_display] at @s run \
function monsters:chapter_1/abyssal_soulreaper/1/2


execute \
    if score @s monster.skill.casting matches 22.. run \
rotate @s ~35 0


execute \
    if score @s monster.skill.casting matches 34 run \
function monsters:chapter_1/abyssal_soulreaper/1/3

execute \
    if score @s monster.skill.casting matches 34.. run \
function monsters:chapter_1/abyssal_soulreaper/cast/end