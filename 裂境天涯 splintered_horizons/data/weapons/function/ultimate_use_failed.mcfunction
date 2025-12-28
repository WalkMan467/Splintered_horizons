# 終焉技專用顯示冷卻時間

scoreboard players set %2 weapon.ultimate.cd.math 2
scoreboard players operation %temp weapon.ultimate.cd.math = @s player.ultimate

execute store result storage temp ultimate.cd float 0.1 run \
scoreboard players operation %temp weapon.ultimate.cd.math /= %2 weapon.ultimate.cd.math
data modify storage temp ultimate.cd set string storage temp ultimate.cd 0 -1

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","nbt":"ultimate.cd","storage":"temp"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20