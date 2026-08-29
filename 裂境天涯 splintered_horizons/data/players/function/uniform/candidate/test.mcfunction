# 執行者 : 玩家
# 測試制服的註冊項。優先級 9 —— 刻意高過所有正式制服，
# 這樣才能拿來驗「制服換制服時櫃子不會被碰」。
#
# `matches ..9` 讓已經有更高優先級得標時直接跳過，
# 所以 candidates 的執行順序不影響結果。

execute \
    if entity @s[tag=player.uniform.test] if score #want global.main matches ..9 run \
function players:uniform/propose {name:"test",priority:9}
