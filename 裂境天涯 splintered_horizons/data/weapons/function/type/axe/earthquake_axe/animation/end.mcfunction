# ===================================================
# 地震之斧 動畫 結束 / earthquake axe animation finish

    ## Guide [ function weapons:type/axe/earthquake_axe/animation/end ] >>> 地震之斧 動畫 結束 / earthquake axe animation finish
    ## Guide [ function weapons:type/axe/earthquake_axe/animation/run ] >>> 地震之斧 動畫 執行 / earthquake axe animation run

# ===================================================

scoreboard players set @p[tag=temp] player.hide 30
scoreboard players set @p[tag=temp] weapon.earthquake_axe.animation 30
scoreboard players operation @p[tag=temp] player.animation.lock = @p[tag=temp] weapon.earthquake_axe.animation
scoreboard players set @p[tag=temp] player.actionbar.weapon.earthquake_axe 0

tag @p[tag=temp] add weapon.earthquake_axe.end
tag @p[tag=temp] remove weapon.earthquake_axe.finality_tunder
title @p[tag=temp] actionbar ""

function aj:stellar/animations/pause_all
function aj:stellar/animations/earthquake_axe/play