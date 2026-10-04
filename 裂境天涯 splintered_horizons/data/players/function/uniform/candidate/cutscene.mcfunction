# 執行者 : 玩家
# 過場攝影機制服的註冊項。優先級 3
#
# `matches ..3` 讓已經有更高優先級得標時直接跳過，
# 所以 candidates 的執行順序不影響結果。

execute \
    if entity @s[tag=cutscene.player_leave.detect] \
    if score #want global.main matches ..3 run \
function players:uniform/propose {name:"cutscene",priority:3}
