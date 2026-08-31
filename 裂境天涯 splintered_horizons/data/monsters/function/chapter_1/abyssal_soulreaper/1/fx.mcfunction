# ===================================================
# 深淵斷魂者 技能1 環狀特效 / abyssal soulreaper skill 1 ring fx

    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/fx ] >>> 深淵斷魂者 技能1 環狀特效 / abyssal soulreaper skill 1 ring fx
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/0 ] >>> 深淵斷魂者 技能1 蓄力 / abyssal soulreaper skill 1 charge
    ## Guide [ function monsters:chapter_1/abyssal_soulreaper/1/1 ] >>> 深淵斷魂者 技能1 揮斬 / abyssal soulreaper skill 1 swing

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle dust_color_transition{from_color: [0.0f, 0.75f, 0.75f], scale: 1.5f, to_color: [0.0f, 0.75f, 1.0f]} ^ ^ ^8 0 0 0 0 0 force @a

particle trial_spawner_detection_ominous ^ ^ ^8 0.1 0.1 0.1 0 2 normal @a

execute \
    rotated ~3 0 run \
function monsters:chapter_1/abyssal_soulreaper/1/fx