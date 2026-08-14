# ===================================================
# 鐮 終焉雙重火 主迴圈 / scythe flame of finality loop

    ## Guide [ function weapons:type/scythe/flame_of_finality/main ] >>> 鐮 終焉雙重火 主迴圈 / scythe flame of finality loop
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

execute \
    unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:"flame_of_finality"}] run \
return run \
attribute @s attack_damage modifier remove weapon.flame_of_finality

scoreboard players set @s player.actionbar.eye_of_finality 2
attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base