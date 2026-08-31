# 執行者 : 玩家
# 範例：脫下測試制服
#
#     function players:uniform/test/1
#
# 同樣是兩行。refresh 會重算 —— 如果此時你還在飛行或過場中，
# 它會換上那一套而不是把真背包還你，櫃子依然不會被碰。

tag @s remove player.uniform.cutscene
function players:uniform/refresh

function players:uniform/test/report