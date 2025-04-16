# 距離玩家過遠執行指令

bossbar remove minecraft:monster.boss.broken_moon
bossbar remove minecraft:monster.boss.broken_moon.passive


execute if entity @s[type=player] run return 0

tp @s ~ -255 ~
kill @s