# ===================================================
# 弓 終焉凝視者 箭矢 儲存傷害 / bow the endwatcher arrow store damage

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/charge_player ] >>> 弓 終焉凝視者 箭矢 儲存傷害 / bow the endwatcher arrow store damage
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/charge ] >>> 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge

# ===================================================

# 執行者 : 射箭的玩家
#
# 共鳴值在 arrow/resonance 那邊加，這裡只負責把這一下的傷害存起來
# 上限 = 攻擊力 x 50（單位 x1000，跟 sys:dmg_show 一致）

scoreboard players operation @s weapon.the_endwatcher.stored += #dmg weapon.the_endwatcher.stored

execute \
    store result score #cap weapon.the_endwatcher.stored run \
attribute @s minecraft:attack_damage get 1000

scoreboard players set #50 weapon.the_endwatcher.stored 50
scoreboard players operation #cap weapon.the_endwatcher.stored *= #50 weapon.the_endwatcher.stored

execute \
    if score @s weapon.the_endwatcher.stored > #cap weapon.the_endwatcher.stored run \
scoreboard players operation @s weapon.the_endwatcher.stored = #cap weapon.the_endwatcher.stored
