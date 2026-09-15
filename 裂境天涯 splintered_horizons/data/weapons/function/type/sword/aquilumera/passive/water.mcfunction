# ===================================================
# 水之魔劍 水鏡之光 被動 水型態 / sword aquilumera passive water form

    ## Guide [ function weapons:type/sword/aquilumera/passive/water ] >>> 水之魔劍 水鏡之光 被動 水型態 / sword aquilumera passive water form
    ## Guide [ function weapons:type/sword/aquilumera/passive/consume ] >>> 水之魔劍 水鏡之光 被動 消耗倒影 / sword aquilumera passive consume reflection
    ## Guide [ function weapons:type/sword/aquilumera/passive/water_cd ] >>> 水之魔劍 水鏡之光 被動 水型態 減冷卻 / sword aquilumera passive water form reduce cooldown

# ===================================================

# 執行者 : 攻擊的玩家
#
# 減的是「現在手上那把武器」的冷卻 : 從主手物品的 custom_data 讀 weapon 名稱，
# 對應整包統一的 weapon.<武器>.cd。
# 手上是空的、不是武器、或那把武器沒有冷卻時，macro 那支會直接失敗，什麼都不會發生。

scoreboard players set #cd_ok weapon.aquilumera.reflection.form 0

function weapons:type/sword/aquilumera/passive/water_cd with entity @s SelectedItem.components."minecraft:custom_data"

# 扣 CD 本身看不到，有真的扣到才給一聲只有自己聽得到的水聲

execute \
    if score #cd_ok weapon.aquilumera.reflection.form matches 1 run \
playsound minecraft:item.bucket.fill voice @s ~ ~1 ~ 0.6 1.8
