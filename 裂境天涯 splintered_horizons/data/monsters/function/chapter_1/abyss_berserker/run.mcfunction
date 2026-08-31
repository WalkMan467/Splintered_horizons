# ===================================================
# 深淵狂暴者 狂暴強化 / abyss berserker enrage buff

    ## Guide [ function monsters:chapter_1/abyss_berserker/run ] >>> 深淵狂暴者 狂暴強化 / abyss berserker enrage buff
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

execute \
    if score @s sys.silence matches 1.. run \
return 0

effect give @s speed 2 0 true
effect give @s strength 2 0 false