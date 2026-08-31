# 執行者 : 玩家
# 由 candidate 呼叫，宣告「我這套該被穿上」。
#
# 參數 : name      制服名，對應 players:uniform/wear/<name>
#        priority  優先級，數字大的贏
#
# 呼叫端已經比過優先級才會叫這支，所以這裡直接寫入不再判斷。

$scoreboard players set #want global.main $(priority)
$data modify storage players:uniform want set value "$(name)"
