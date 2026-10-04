# ===================================================
# 深淵黑騎 技能1 主體 群體加速 / abyssal black knight skill 1 body

    ## Guide [ function monsters:chapter_1/abyssal_black_knight/1/main ] >>> 深淵黑騎 技能1 主體 群體加速 / abyssal black knight skill 1 body
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main ] >>> 深淵黑騎 主程式 / abyssal black knight main
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/1/fx ] >>> 深淵黑騎 技能1 環狀特效 / abyssal black knight skill 1 ring fx
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/cast/end ] >>> 深淵黑騎 施法 結束並重設冷卻 / abyssal black knight cast end

# ===================================================

function monsters:chapter_1/abyssal_black_knight/cast/end

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

execute \
    if score @s sys.silence matches 1.. run \
return 0

scoreboard players reset #monster.abyssal_black_knight.fx particle

execute rotated ~ 0 run \
function monsters:chapter_1/abyssal_black_knight/1/fx

playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.iron_golem.hurt voice @a ~ ~1 ~ 1 0.5

effect give @e[type=!#dummy_mob,type=!player,distance=..4] speed 5 1 false