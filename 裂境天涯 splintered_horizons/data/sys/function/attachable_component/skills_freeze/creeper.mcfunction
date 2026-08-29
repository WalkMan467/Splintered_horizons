# ===================================================

# creeper


    ## Guide [ function sys:attachable_component/skills_freeze/creeper ] >>> creeper

    ## Guide [ function sys:attachable_component/skills_freeze/main ] >>> main

    ## Guide [ function sys:attachable_component/skills_freeze/reset ] >>> reset


# ===================================================


# 把索敵距離歸零，SwellGoal 失去目標後會把引信方向轉成 -1，膨脹就會倒回去
# 這件事必須讓 AI 活著才會發生，所以這裡反而要確保 NoAI 是關的
# 位移已經被 movement_speed / gravity / jump_strength 等屬性鎖死，不靠 NoAI


attribute @s minecraft:follow_range modifier add sys.skills_freeze -1024 add_value

data modify entity @s ignited set value 0b
data modify entity @s NoAI set value 0b
