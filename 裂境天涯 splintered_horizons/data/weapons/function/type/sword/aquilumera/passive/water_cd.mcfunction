# ===================================================
# 水之魔劍 水鏡之光 被動 水型態 減冷卻 / sword aquilumera passive water form reduce cooldown

    ## Guide [ function weapons:type/sword/aquilumera/passive/water_cd ] >>> 水之魔劍 水鏡之光 被動 水型態 減冷卻 / sword aquilumera passive water form reduce cooldown
    ## Guide [ function weapons:type/sword/aquilumera/passive/water ] >>> 水之魔劍 水鏡之光 被動 水型態 / sword aquilumera passive water form

# ===================================================

# 執行者 : 攻擊的玩家
# 參數 : weapon  主手武器 custom_data 裡的 weapon 名稱
#
# 整包的武器 CD 大多是絕對時間制（存的是可以再放的那一 tick），
# 少數還是倒數制（存剩餘 tick）。兩種都是「數字減 40 = 少等 2 秒」，所以不用分開處理。
# 倒數制減到負數時夾回 0 ; 絕對時間制的值是很大的正數，不會碰到。

# 這把武器沒有冷卻計分板的話，這行會直接失敗，#cd_ok 維持 0

$execute store success score #cd_ok weapon.aquilumera.reflection.form if score @s weapon.$(weapon).cd matches -2147483648..2147483647

execute \
    unless score #cd_ok weapon.aquilumera.reflection.form matches 1 run \
return 0

$scoreboard players remove @s weapon.$(weapon).cd 40

$execute if score @s weapon.$(weapon).cd matches ..-1 run scoreboard players set @s weapon.$(weapon).cd 0
