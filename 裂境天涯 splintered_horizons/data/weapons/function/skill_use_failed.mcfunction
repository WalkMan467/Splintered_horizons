# 一般主動技專用顯示冷卻時間

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2
title @s title ""
$title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{"color": "gold","score": {"name": "@s","objective": "weapon.$(weapon).cd"}}]
title @s times 0 20 20

scoreboard players set @s player.click.interval 20