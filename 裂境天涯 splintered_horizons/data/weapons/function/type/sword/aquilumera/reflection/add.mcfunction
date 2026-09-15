# ===================================================
# 水之魔劍 水鏡之光 倒影 疊加 / sword aquilumera reflection add

    ## Guide [ function weapons:type/sword/aquilumera/reflection/add ] >>> 水之魔劍 水鏡之光 倒影 疊加 / sword aquilumera reflection add
    ## Guide [ function weapons:type/sword/aquilumera/switch/water/dmg ] >>> 水之魔劍 水鏡之光 切換 water 傷害 / sword aquilumera switch water damage
    ## Guide [ function weapons:type/sword/aquilumera/switch/light/dmg ] >>> 水之魔劍 水鏡之光 切換 light 傷害 / sword aquilumera switch light damage

# ===================================================

# 執行者 : 被技能打中的敵人
#
# 不設上限，每多一層就把整隻的到期時間刷新成 15 秒後。
# 到期時間用絕對時間記，不需要每 tick 倒數。

scoreboard players add @s weapon.aquilumera.reflection 1

scoreboard players operation @s weapon.aquilumera.reflection.expire = #gametime global.main
scoreboard players add @s weapon.aquilumera.reflection.expire 300

# 最後一次疊上來的型態決定粒子顏色

scoreboard players operation @s weapon.aquilumera.reflection.form = #form weapon.aquilumera.reflection.form

# 全場最晚的到期時間 : reflection/tick 靠它判斷還要不要掃實體
# 用 unless >= 而不是 if < : #max 還沒有值的時候比較式永遠不成立，會一直寫不進去

execute \
    unless score #max weapon.aquilumera.reflection.expire >= @s weapon.aquilumera.reflection.expire run \
scoreboard players operation #max weapon.aquilumera.reflection.expire = @s weapon.aquilumera.reflection.expire
