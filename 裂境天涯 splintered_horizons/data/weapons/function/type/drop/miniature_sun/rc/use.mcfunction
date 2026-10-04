# ===================================================
# 投擲 微型太陽 右鍵 觸發 / thrown miniature sun right click activate

    ## Guide [ function weapons:type/drop/miniature_sun/rc/use ] >>> 投擲 微型太陽 右鍵 觸發 / thrown miniature sun right click activate
    ## Guide [ function weapons:type/drop/miniature_sun/rc/motion/use ] >>> 投擲 微型太陽 右鍵 位移 觸發 / thrown miniature sun right click motion activate

# ===================================================

scoreboard players set @s player.click.interval 20
clear @s *[custom_data~{type:"drop",weapon:"miniature_sun",rc:1b}] 1

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 1 0.75

function weapons:type/drop/miniature_sun/rc/motion/use