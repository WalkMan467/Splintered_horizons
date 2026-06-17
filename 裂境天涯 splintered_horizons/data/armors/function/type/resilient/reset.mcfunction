# ===================================================
# reset

    ## Guide [ function armors:type/resilient/reset ] >>> reset
    ## Guide [ function armors:type/resilient/use ] >>> use
    ## Guide [ function armors:type/resilient/main ] >>> resilient main

# ===================================================

# This Function: reset

scoreboard players reset @s armor.resilient.hit
scoreboard players reset @s armor.resilient.cd
scoreboard players reset @s armor.resilient.effect.timer

playsound minecraft:entity.breeze.charge voice @a ~ ~1 ~ 1 0.75

attribute @s armor modifier remove armor.resilient