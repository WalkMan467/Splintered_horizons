# ===================================================
# Sys Dummy Mob Timer Function
## Guide [ function sys:dummy_mob/timer ] >>> 管理虛擬怪物計時器倒數
## Guide [ function sys:dummy_mob/introduction ] >>> 初始化虛擬怪物記分板和介紹顯示

# ===================================================
execute \
    unless score @s sys.dummy_mob matches -2147483648..2147483647 run \
return 0

execute \
    if score @s sys.dummy_mob matches ..0 run \
return run \
scoreboard players reset @s sys.dummy_mob

scoreboard players remove @s sys.dummy_mob 1