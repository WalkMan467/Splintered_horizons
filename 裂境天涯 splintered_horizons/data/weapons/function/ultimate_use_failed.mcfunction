# 終焉技專用顯示冷卻時間

scoreboard players set %20 weapon.ultimate.cd.math 20
scoreboard players operation %temp weapon.ultimate.cd.math = @s player.ultimate
scoreboard players operation %temp weapon.ultimate.cd.math /= %20 weapon.ultimate.cd.math

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2
title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","score": {"name": "%temp","objective": "weapon.ultimate.cd.math"}},{"text":"s","color":"gold"}]
title @s times 0 20 20

scoreboard players set @s player.click.interval 20