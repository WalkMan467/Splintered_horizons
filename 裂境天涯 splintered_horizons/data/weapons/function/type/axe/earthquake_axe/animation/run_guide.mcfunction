# ===================================================
# 地震之斧 動畫 run guide / earthquake axe animation run guide

    ## Guide [ function weapons:type/axe/earthquake_axe/animation/run_guide ] >>> 地震之斧 動畫 run guide / earthquake axe animation run guide
    ## Guide [ function weapons:type/axe/earthquake_axe/animation/run ] >>> 地震之斧 動畫 執行 / earthquake axe animation run

# ===================================================

scoreboard players set @p[tag=temp] weapon.earthquake_axe.animation 60
scoreboard players set @p[tag=temp] player.hide 60
scoreboard players operation @p[tag=temp] player.animation.lock = @p[tag=temp] weapon.earthquake_axe.animation
scoreboard players operation @p[tag=temp] player.shift.skill.disable = @p[tag=temp] weapon.earthquake_axe.animation
scoreboard players remove @p[tag=temp] player.finality_tunder 1
scoreboard players set @p[tag=temp] player.actionbar.weapon.earthquake_axe 0

title @p[tag=temp] actionbar ""

function aj:stellar/animations/pause_all
function aj:stellar/animations/earthquake_axe2/play