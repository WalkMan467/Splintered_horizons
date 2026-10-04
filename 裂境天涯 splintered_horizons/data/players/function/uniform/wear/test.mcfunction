# 執行者 : 玩家
# 測試制服。內容固定、可重複生成，所以不需要被存進任何 bag。
# 由 players:uniform/refresh 呼叫。
#
# 刻意選很顯眼的東西，一眼就看得出身上是不是制服。

clear @s

item replace entity @s armor.head with carved_pumpkin[item_name='{"text":"測試制服","color":"gold"}'] 1
give @s stick[item_name='{"text":"測試制服的棍子","color":"gold"}'] 3
