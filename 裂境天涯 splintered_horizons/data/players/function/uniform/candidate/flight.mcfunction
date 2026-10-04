# 執行者 : 玩家
# 飛行制服的註冊項。優先級 1
#
# `matches ..1` 讓已經有更高優先級得標時直接跳過，
# 所以 candidates 的執行順序不影響結果。

execute \
    if entity @s[tag=player.elytra_switch] \
    if score #want global.main matches ..1 run \
function players:uniform/propose {name:"flight",priority:1}
