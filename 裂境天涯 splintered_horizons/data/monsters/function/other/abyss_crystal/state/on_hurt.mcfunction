# ===================================================
# 深淵水晶 受擊 反饋 / abyss crystal on hurt feedback

    ## Guide [ function monsters:other/abyss_crystal/state/on_hurt ] >>> 深淵水晶 受擊 反饋 / abyss crystal on hurt feedback
    ## Guide [ function monsters:other/abyss_crystal/main.monster ] >>> 深淵水晶 本體 冷卻與受擊 / abyss crystal self tick

# ===================================================

playsound minecraft:entity.breeze.hurt voice @a ~ ~1 ~ 1 0.75
playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.blaze.hurt voice @a ~ ~1 ~ 1 0.875
playsound minecraft:entity.creaking.unfreeze voice @a ~ ~1 ~ 1 1

particle block{block_state:"sculk"} ~ ~1 ~ 0.5 1 0.5 1 40 force @a