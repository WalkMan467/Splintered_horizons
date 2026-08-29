# 執行者 : 玩家
# 回到便服。櫃子是空的就什麼都不做 —— 這是「沒穿制服時死掉」的正確行為，
# 不能無條件 return，否則會把過期或空的櫃子倒到玩家身上。

execute \
    unless entity @s[tag=player.uniform.locker] run \
return 0

function players:uniform/unstow
