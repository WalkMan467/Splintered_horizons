# 執行者 : 玩家
# 制服系統的唯一入口。任何會影響「該穿哪套」的狀態變動後呼叫一次即可。
# 可重入、可重複呼叫、順序無關。
#
# 不變式: 櫃子有東西 (tag player.uniform.locker) ⟺ 玩家身上是制服
# 除了 players:uniform/stow 與 unstow，任何地方都不准再碰 bag "real"。
#
# 制服清單不寫在這裡。每套制服自己註冊一支 candidate 函式進
# #players:uniform/candidates，所以新增制服不需要動到本檔。
#
# 優先級必須唯一。player.uniform 存的是優先級數字，
# 兩套制服共用同一個數字的話，第 2 步會認為「沒變」而不重套。

# 1. 問過所有候選者，優先級最高的得標
scoreboard players set #want global.main 0
data modify storage players:uniform want set value "none"

function #players:uniform/candidates

# 2. 狀態沒變就什麼都不做。這一行就是修掉污染的那一行。
#    force 是給重生 / 上線用的: 邏輯狀態沒變但身上的東西已經不見了，必須重套。
execute \
    if score #want global.main = @s player.uniform \
    unless entity @s[tag=player.uniform.force] run \
return 0

tag @s remove player.uniform.force

# 3. 櫃子空的、而且要換上制服 → 存一次。就這一次。
execute \
    unless entity @s[tag=player.uniform.locker] \
    unless score #want global.main matches 0 run \
function players:uniform/stow

# 4. 先寫回再套用，這樣套用過程中若又觸發 refresh 會被第 2 步擋掉
scoreboard players operation @s player.uniform = #want global.main

# 5. 套用目標狀態
function players:uniform/apply with storage players:uniform
