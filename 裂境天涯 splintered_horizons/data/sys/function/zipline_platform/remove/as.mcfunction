# 執行者 : 要被拆掉的滑索台盔甲座
#
# 原版 kill 掉載具時乘客是被踢下來而不是一起消失，所以連線清單 marker
# 要自己殺，不然會留下一顆孤兒 marker 帶著已經不存在的塔的 id。

execute \
    on passengers \
    if entity @s[tag=sys.zipline_platform.link] run \
kill @s

kill @s
