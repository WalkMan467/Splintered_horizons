# ===================================================
# broken

    ## Guide [ function armors:type/resilient/broken ] >>> broken
    ## Guide [ function armors:type/resilient/use ] >>> use
    ## Guide [ function armors:type/resilient/main ] >>> resilient main

# ===================================================

# This Function: broken

scoreboard players set @s armor.resilient.cd 160
scoreboard players reset @s armor.resilient.hit
scoreboard players reset @s armor.resilient.effect.timer

playsound minecraft:voice.broken voice @a ~ ~1 ~ 1 0.75

particle block{block_state:"blue_stained_glass"} ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a

attribute @s armor modifier remove armor.resilient