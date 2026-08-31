# 執行者 : 玩家
# 範例：穿上測試制服
#
#     function players:uniform/test/0
#
# 正式的制服系統就是這兩行 —— 改 tag，然後 refresh。
# 順序不能顛倒：refresh 是看 tag 決定該穿哪套的。

tag @s add player.uniform.cutscene
function players:uniform/refresh

function players:uniform/test/report