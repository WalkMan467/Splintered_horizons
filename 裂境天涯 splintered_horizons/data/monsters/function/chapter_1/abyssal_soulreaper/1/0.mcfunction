# ===================================================
# 深淵斷魂者 技能1 蓄力 / abyssal soulreaper skill 1 charge

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/0 ] >>> 深淵斷魂者 技能1 蓄力 / abyssal soulreaper skill 1 charge
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/main ] >>> 深淵斷魂者 技能1 分鏡 / abyssal soulreaper skill 1 timeline
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/fx ] >>> 深淵斷魂者 技能1 環狀特效 / abyssal soulreaper skill 1 ring fx

# ===================================================

playsound block.beacon.activate master @a ~ ~1 ~ 1 2

scoreboard players reset #monster.abyssal_soulreaper.fx particle

execute rotated ~ 0 run \
function monsters:chapter_1/abyssal_soulreaper/1/fx