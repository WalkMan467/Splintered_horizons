# ===================================================
# 魂之神射手 技能1 浮空 / soul sharpshooter skill 1 levitate

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/1/main ] >>> 魂之神射手 技能1 浮空 / soul sharpshooter skill 1 levitate
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main ] >>> 魂之神射手 主程式 / soul sharpshooter main
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/end ] >>> 魂之神射手 施法 結束並重設冷卻 / soul sharpshooter cast end

# ===================================================

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s monster.skill.silence matches 1.. run \
    return run \
function monsters:chapter_2/soul_sharpshooter/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_2/soul_sharpshooter/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
effect give @s levitation 5 1 false

execute \
    if score @s monster.skill.casting matches 1 run \
effect give @s slow_falling 8 255 true

execute \
    if score @s monster.skill.casting matches 1 run \
playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5


execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a


execute \
    if score @s monster.skill.casting matches 160.. run \
function monsters:chapter_2/soul_sharpshooter/cast/end