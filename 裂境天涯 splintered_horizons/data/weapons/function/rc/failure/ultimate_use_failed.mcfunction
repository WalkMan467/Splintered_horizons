# ===================================================
# 右鍵 失敗 ultimate use failed / right click failure ultimate use failed

    ## Guide [ function weapons:rc/failure/ultimate_use_failed ] >>> 右鍵 失敗 ultimate use failed / right click failure ultimate use failed
    ## Guide [ function weapons:type/axe/earthquake_axe/rc/use ] >>> 地震之斧 右鍵 觸發 / earthquake axe right click activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/rc/use ] >>> 鐮 終焉雙重火 右鍵 觸發 / scythe flame of finality right click activate
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/use ] >>> 鐮 終焉之墟 右鍵 觸發 / scythe ruins of the finality right click activate
    ## Guide [ function weapons:type/sword/echo_rhythm/rc/use ] >>> 劍 回音律動 右鍵 觸發 / sword echo rhythm right click activate

# ===================================================

# 終焉技專用顯示冷卻時間
# 終焉之眼（player.ultimate）同樣改成絕對時間制：分數存的是「可以再放的那一 tick」

scoreboard players set %2 weapon.ultimate.cd.math 2

scoreboard players operation %temp weapon.ultimate.cd.math = @s player.ultimate
scoreboard players operation %temp weapon.ultimate.cd.math -= #gametime global.main

# 轉好了就不要顯示負數（整除是向下取整，負數會被除成更負的值）
execute \
    if score %temp weapon.ultimate.cd.math matches ..0 run \
scoreboard players set %temp weapon.ultimate.cd.math 0

# 先 +1 再整除 2 等於對 0.1 秒無條件進位
# 直接截斷的話剩 1 tick 會顯示成 0.0s，但技能其實還沒好
scoreboard players add %temp weapon.ultimate.cd.math 1

execute \
    store result storage temp ultimate.cd float 0.1 run \
scoreboard players operation %temp weapon.ultimate.cd.math /= %2 weapon.ultimate.cd.math
data modify storage temp ultimate.cd set string storage temp ultimate.cd 0 -1

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","nbt":"ultimate.cd","storage":"temp"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20