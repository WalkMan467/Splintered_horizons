# 執行者 : 玩家
# 制服系統的唯一入口。任何會影響「該穿哪套」的狀態變動後呼叫一次即可。
# 可重入、可重複呼叫、順序無關。
#
# 不變式: 櫃子有東西 (tag player.uniform.locker) ⟺ 玩家身上是制服
# 除了 players:uniform/stow 與 unstow，任何地方都不准再碰 bag "real"。

# 1. 依優先級算出「現在該穿哪套」  過場 3 > 禁用背包 2 > 飛行 1 > 便服 0
scoreboard players set #want global.main 0

execute     if entity @s[tag=player.elytra_switch] run scoreboard players set #want global.main 1

execute     if entity @s[tag=monster.elekiel_phase_2.void.target] run scoreboard players set #want global.main 2

execute     if entity @s[tag=cutscene.player_leave.detect] run scoreboard players set #want global.main 3

# 2. 狀態沒變就什麼都不做。這一行就是修掉污染的那一行。
#    force 是給重生/上線用的: 邏輯狀態沒變但身上的東西已經不見了，必須重套。
execute     if score #want global.main = @s player.uniform     unless entity @s[tag=player.uniform.force] run return 0

tag @s remove player.uniform.force

# 3. 櫃子空的、而且要換上制服 → 存一次。就這一次。
execute     unless entity @s[tag=player.uniform.locker]     unless score #want global.main matches 0 run function players:uniform/stow

# 4. 先寫回再套用，這樣套用過程中若又觸發 refresh 會被第 2 步擋掉
scoreboard players operation @s player.uniform = #want global.main

# 5. 套用目標狀態
execute if score #want global.main matches 0 run function players:uniform/wear/none
execute if score #want global.main matches 1 run function players:uniform/wear/flight
execute if score #want global.main matches 2 run function players:uniform/wear/disable
execute if score #want global.main matches 3 run function players:uniform/wear/cutscene
