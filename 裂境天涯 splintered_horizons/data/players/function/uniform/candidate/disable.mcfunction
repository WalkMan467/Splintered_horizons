# 執行者 : 玩家
# Boss 禁用背包制服的註冊項。優先級 2
#
# `matches ..2` 讓已經有更高優先級得標時直接跳過，
# 所以 candidates 的執行順序不影響結果。

execute \
    if entity @s[tag=monster.elekiel_phase_2.void.target] \
    if score #want global.main matches ..2 run \
function players:uniform/propose {name:"disable",priority:2}
