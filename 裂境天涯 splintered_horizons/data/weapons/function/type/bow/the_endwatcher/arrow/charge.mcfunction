# ===================================================
# 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/charge ] >>> 弓 終焉凝視者 箭矢 共鳴充能 / bow the endwatcher arrow resonance charge
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/victim ] >>> 弓 終焉凝視者 箭矢 命中處理 / bow the endwatcher arrow victim

# ===================================================

# 執行者 : 被射中的敵人
#
# 共鳴值 +8 ~ 15%，並把這一下造成的傷害存起來
#
# 傷害怎麼算 : sys:dmg_show 每 tick 會把實體血量記進 sys.dmg_show.hpmax，
# 它下一 tick 才會更新，所以現在的 hpmax 還是「被射中之前」的血量，
# 拿它減掉現在的血量就是這一下的傷害單位跟 dmg_show 一樣是 x1000
# 沒有被 dmg_show 記錄過的實體算出來會是負的，那種情況就當 0，不存

execute \
    store result score #hp weapon.the_endwatcher.stored run \
data get entity @s Health 1000

scoreboard players set #hp2 weapon.the_endwatcher.stored 0

execute \
    if predicate sys:dmg_show/has_absorption \
    store result score #hp2 weapon.the_endwatcher.stored run \
data get entity @s AbsorptionAmount 1000

scoreboard players operation #hp weapon.the_endwatcher.stored += #hp2 weapon.the_endwatcher.stored

scoreboard players operation #dmg weapon.the_endwatcher.stored = @s sys.dmg_show.hpmax
scoreboard players operation #dmg weapon.the_endwatcher.stored -= #hp weapon.the_endwatcher.stored

execute \
    unless score #dmg weapon.the_endwatcher.stored matches 0.. run \
scoreboard players set #dmg weapon.the_endwatcher.stored 0

execute \
    store result score #add weapon.the_endwatcher.resonance run \
random value 8..15

execute \
    on attacker run \
function weapons:type/bow/the_endwatcher/arrow/charge_player
