# ===================================================
# 弓 終焉凝視者 共鳴值 GUI / bow the endwatcher resonance gui

    ## Guide [ function players:actionbar/the_endwatcher ] >>> actionbar 共鳴值 / actionbar resonance
    ## Guide [ function players:actionbar/main ] >>> actionbar main / actionbar main

# ===================================================

# 執行者 : 玩家
#
# 共鳴值進度條，充能時顯示 1 秒。優先度最高，終焉閃電 GUI 與符文都要讓位。
# 這裡先用文字條拼，之後材質包畫好專用字型再換掉就好。

execute \
    if entity @s[tag=!animation,gamemode=spectator] run \
return 0

execute \
    if entity @s[gamemode=!creative,gamemode=!spectator,gamemode=!survival,gamemode=!adventure] run \
return 0

# 開眼中改成顯示剩餘釋放次數，共鳴值那條讓位

execute \
    if score @s weapon.the_endwatcher.awaken matches 1..5 run \
    return run \
function players:actionbar/the_endwatcher_awaken

# Display Actionbar

execute \
    if score @s weapon.the_endwatcher.resonance matches 0..9 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"□□□□□□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 10..19 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■□□□□□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 20..29 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■□□□□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 30..39 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■□□□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 40..49 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■□□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 50..59 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■□□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 60..69 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■■□□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 70..79 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■■■□□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 80..89 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■■■■□□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 90..99 run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■■■■■□","color":"#CE0000"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]

execute \
    if score @s weapon.the_endwatcher.resonance matches 100.. run \
title @s actionbar [{"text":"| ","color":"white"},{"translate":"weapon.the_endwatcher.resonance","fallback":"共鳴值","color":"#CE0000","bold":true},{"text":" "},{"text":"■■■■■■■■■■","color":"#FF3B3B"},{"text":" "},{"score":{"name":"@s","objective":"weapon.the_endwatcher.resonance"},"color":"gold"},{"text":"%","color":"gold"},{"text":" |","color":"white"}]
