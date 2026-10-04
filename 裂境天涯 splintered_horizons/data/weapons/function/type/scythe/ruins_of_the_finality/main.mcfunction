# ===================================================
# 鐮 終焉之墟 主迴圈 / scythe ruins of the finality loop

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/main ] >>> 鐮 終焉之墟 主迴圈 / scythe ruins of the finality loop
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/run ] >>> 鐮 終焉之墟 效果 執行 / scythe ruins of the finality effect run
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/effect/end ] >>> 鐮 終焉之墟 效果 結束 / scythe ruins of the finality effect finish
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/animation/1/use ] >>> 鐮 終焉之墟 右鍵 動畫 階段 1 觸發 / scythe ruins of the finality right click animation step 1 activate

# ===================================================


execute \
    as @p[tag=!weapon.ruins_of_the_finality.input.disable,tag=weapon.ruins_of_the_finality.screen] \
    if predicate players:detect/input/jump \
    if score @s weapon.ruins_of_the_finality.effect.count matches 1.. \
    unless score @s weapon.ruins_of_the_finality.effect.count.delay matches 1.. run \
function weapons:type/scythe/ruins_of_the_finality/effect/run

execute \
    as @p[tag=!weapon.ruins_of_the_finality.input.disable,tag=weapon.ruins_of_the_finality.screen] \
    if predicate players:detect/input/jump \
    unless score @s weapon.ruins_of_the_finality.effect.count matches 1.. \
    unless score @s weapon.ruins_of_the_finality.effect.count.delay matches 1.. \
    as @n[tag=aj.stellar.root] at @s run \
function weapons:type/scythe/ruins_of_the_finality/effect/end


execute \
    as @a at @s \
    unless score @s player.animation.lock matches 1.. \
    if score @s weapon.ruins_of_the_finality.effect.time matches 1 run \
function weapons:type/scythe/ruins_of_the_finality/rc/animation/1/use


execute \
    as @a[tag=weapon.ruins_of_the_finality.screen] at @s \
    if score @n weapon.ruins_of_the_finality.id = @n[tag=aj.stellar.camera_2] weapon.ruins_of_the_finality.id run \
spectate @n[tag=aj.stellar.camera_2]

execute \
    as @a \
    unless score @s weapon.ruins_of_the_finality.effect.count.delay matches 1.. run \
title @s[tag=weapon.ruins_of_the_finality.screen] title [{"text": "\uE002","font":"screen"}]

execute \
    as @a \
    unless score @s weapon.ruins_of_the_finality.effect.count.delay matches 1.. run \
title @s[tag=weapon.ruins_of_the_finality.screen] times 0 2 0

execute \
    as @a \
    unless score @s weapon.ruins_of_the_finality.effect.count.delay matches 1.. run \
title @s[tag=weapon.ruins_of_the_finality.screen] subtitle [{"translate":"weapon.ruins_of_the_finality.tips.1","color":"gray","with": [{"keybind":"key.jump","underlined":true,"color":"dark_green"}]}]

schedule function weapons:type/scythe/ruins_of_the_finality/main 1t