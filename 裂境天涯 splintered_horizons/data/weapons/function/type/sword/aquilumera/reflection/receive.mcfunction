# ===================================================
# 水之魔劍 水鏡之光 倒影 接收 / sword aquilumera reflection receive

    ## Guide [ function weapons:type/sword/aquilumera/reflection/receive ] >>> 水之魔劍 水鏡之光 倒影 接收 / sword aquilumera reflection receive
    ## Guide [ function weapons:type/sword/aquilumera/reflection/transfer ] >>> 水之魔劍 水鏡之光 倒影 轉移 / sword aquilumera reflection transfer

# ===================================================

# 執行者 : 接收倒影的敵人

scoreboard players operation @s weapon.aquilumera.reflection += #stacks weapon.aquilumera.reflection
scoreboard players operation @s weapon.aquilumera.reflection.form = #transfer weapon.aquilumera.reflection.form

# 沿用剩餘時間 ; 目標自己的倒影比較晚到期就保留晚的，不要被轉移縮短

execute \
    unless score @s weapon.aquilumera.reflection.expire >= #expire weapon.aquilumera.reflection.expire run \
scoreboard players operation @s weapon.aquilumera.reflection.expire = #expire weapon.aquilumera.reflection.expire

# particle
execute at @s run \
particle minecraft:bubble_pop ~ ~1 ~ 0.3 0.5 0.3 0.05 20 normal @a
execute at @s run \
playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 0.6 1.4
