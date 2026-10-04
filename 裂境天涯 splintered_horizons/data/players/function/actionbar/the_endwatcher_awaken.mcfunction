# ===================================================
# 弓 終焉凝視者 開眼 GUI / bow the endwatcher awaken gui

    ## Guide [ function players:actionbar/the_endwatcher_awaken ] >>> actionbar 開眼 / actionbar awaken
    ## Guide [ function players:actionbar/the_endwatcher ] >>> actionbar 共鳴值 / actionbar resonance

# ===================================================

# 執行者 : 玩家
#
# 開眼消耗的是「累積傷害」，所以這條顯示的是還剩多少累積傷害，
# 前面那格再附上還能釋放幾次守衛在 players:actionbar/the_endwatcher 做過了
#
# 累積傷害存的單位是 x1000（跟 sys:dmg_show 一致），除回來才是實際傷害值

scoreboard players set #1000 weapon.the_endwatcher.stored 1000

scoreboard players operation #show weapon.the_endwatcher.stored = @s weapon.the_endwatcher.stored
scoreboard players operation #show weapon.the_endwatcher.stored /= #1000 weapon.the_endwatcher.stored

execute \
    if score @s weapon.the_endwatcher.awaken matches 1 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true},{"text":" "},{"text":"■□□□□","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.awaken"},"color":"gold"},{"text":"/5","color":"gold"},{"text":"   "},{"translate":"weapon.the_endwatcher.stored","fallback":"累積傷害","color":"#CE0000","bold":true},{"text":" "},{"score":{"name":"#show","objective":"weapon.the_endwatcher.stored"},"color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.awaken matches 2 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true},{"text":" "},{"text":"■■□□□","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.awaken"},"color":"gold"},{"text":"/5","color":"gold"},{"text":"   "},{"translate":"weapon.the_endwatcher.stored","fallback":"累積傷害","color":"#CE0000","bold":true},{"text":" "},{"score":{"name":"#show","objective":"weapon.the_endwatcher.stored"},"color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.awaken matches 3 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■□□","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.awaken"},"color":"gold"},{"text":"/5","color":"gold"},{"text":"   "},{"translate":"weapon.the_endwatcher.stored","fallback":"累積傷害","color":"#CE0000","bold":true},{"text":" "},{"score":{"name":"#show","objective":"weapon.the_endwatcher.stored"},"color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.awaken matches 4 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■□","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.awaken"},"color":"gold"},{"text":"/5","color":"gold"},{"text":"   "},{"translate":"weapon.the_endwatcher.stored","fallback":"累積傷害","color":"#CE0000","bold":true},{"text":" "},{"score":{"name":"#show","objective":"weapon.the_endwatcher.stored"},"color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.awaken matches 5 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.awaken","fallback":"開眼","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.awaken"},"color":"gold"},{"text":"/5","color":"gold"},{"text":"   "},{"translate":"weapon.the_endwatcher.stored","fallback":"累積傷害","color":"#CE0000","bold":true},{"text":" "},{"score":{"name":"#show","objective":"weapon.the_endwatcher.stored"},"color":"gold"},{"text":" |","color":"white"}]
