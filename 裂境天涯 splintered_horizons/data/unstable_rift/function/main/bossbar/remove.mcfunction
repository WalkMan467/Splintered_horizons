# ===================================================
# 移除專屬血條 / remove the player's own bossbar

    ## Guide [ function unstable_rift:main/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:main/bossbar/update ] >>> 更新血條數值 / update the bossbar value
    ## Guide [ function unstable_rift:main/bossbar/remove ] >>> 移除專屬血條 / remove the player's own bossbar

# ===================================================

# 參數 : area | id

$execute \
    unless score @s unstable_rift.$(area).display.id matches -1073741823..1073741823 run \
return 0

$bossbar remove unstable_rift.$(area).$(id)

data remove storage unstable_rift:main args.id

$scoreboard players reset @s unstable_rift.$(area).display.id
