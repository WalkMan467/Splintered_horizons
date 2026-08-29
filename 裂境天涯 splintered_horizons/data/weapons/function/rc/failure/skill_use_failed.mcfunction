# ===================================================
# 右鍵 失敗 skill use failed / right click failure skill use failed

    ## Guide [ function weapons:rc/failure/skill_use_failed ] >>> 右鍵 失敗 skill use failed / right click failure skill use failed
    ## Guide [ function weapons:type/axe/thunder_duet/rc/use ] >>> 斧 雷霆二重奏 右鍵 觸發 / axe thunder duet right click activate
    ## Guide [ function weapons:type/scythe/flame_of_abyss/rc/use ] >>> 鐮 深淵雙重火 右鍵 觸發 / scythe flame of abyss right click activate
    ## Guide [ function weapons:type/scythe/morphing_beast/rc/use ] >>> 鐮 變形異獸 右鍵 觸發 / scythe morphing beast right click activate
    ## Guide [ function weapons:type/sword/aquilumera/rc/use ] >>> 水之魔劍 水鏡之光 右鍵 觸發 / sword aquilumera right click activate
    ## Guide [ function weapons:type/sword/grip_of_withering/rc/use ] >>> 劍 凋零之握 右鍵 觸發 / sword grip of withering right click activate

# ===================================================

# 一般主動技專用顯示冷卻時間
# 絕對時間制：weapon.<武器>.cd 存的是「可以再放技能的那一 tick」，分數本身不會倒數，
# 剩餘冷卻要拿它減掉 #gametime 現算 參考 energy_infusion_stone:skills/weapon/finality_cycle/cd

scoreboard players set %2 weapon.cd.math 2

$scoreboard players operation %temp weapon.cd.math = @s weapon.$(weapon).cd
scoreboard players operation %temp weapon.cd.math -= #gametime global.main

# 轉好了就不要顯示負數（整除是向下取整，負數會被除成更負的值）
execute \
    if score %temp weapon.cd.math matches ..0 run \
scoreboard players set %temp weapon.cd.math 0

# 先 +1 再整除 2 等於對 0.1 秒無條件進位
# 直接截斷的話剩 1 tick 會顯示成 0.0s，但技能其實還沒好
scoreboard players add %temp weapon.cd.math 1

execute \
    store result storage temp cd float 0.1 run \
scoreboard players operation %temp weapon.cd.math /= %2 weapon.cd.math
data modify storage temp cd set string storage temp cd 0 -1

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","nbt":"cd","storage":"temp"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20