# ===================================================
# 碎岩大劍 右鍵 主迴圈 / sword rock crushing greatsword right click loop

    ## Guide [ function weapons:type/sword/rock_crushing_greatsword/rc/main ] >>> 碎岩大劍 右鍵 主迴圈 / sword rock crushing greatsword right click loop
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================


execute \
    if score @s weapon.rock_crushing_greatsword.use matches 1.. run \
return 0

scoreboard players reset @s weapon.rock_crushing_greatsword.use

scoreboard players reset @s weapon.rock_crushing_greatsword.hold_down


execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/dmg_immunity/false


execute \
    if items entity @s weapon.mainhand *[custom_data~{weapon:"rock_crushing_greatsword"}] run \
item modify entity @s weapon.mainhand weapons:type/sword/rock_crushing_greatsword/defense/false

scoreboard players set @s player.click.interval 5

tag @s remove rock_crushing_greatsword.user