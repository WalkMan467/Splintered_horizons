# 執行者 : 這一段用完的載具 item_display
#
# 接上下一段了，把這一段的載具和終點 marker 收掉
# interacted/player 會給玩家一組新的 user.id，新的鉤子與終點是靠那組新
# 編號配對的，舊的這兩顆不清掉就會變成沒人認領的孤兒
#
# 不跑 motion/use 那些收尾，因為玩家根本沒有脫離滑索

kill @s

kill @n[distance=0..,tag=owner,type=marker]
