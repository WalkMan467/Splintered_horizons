# 一般主動技專用顯示冷卻時間

scoreboard players set %2 weapon.cd.math 2
$scoreboard players operation %temp weapon.cd.math = @s weapon.$(weapon).cd

execute \
    store result storage temp cd float 0.1 run \
scoreboard players operation %temp weapon.cd.math /= %2 weapon.cd.math
data modify storage temp cd set string storage temp cd 0 -1

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","nbt":"cd","storage":"temp"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20