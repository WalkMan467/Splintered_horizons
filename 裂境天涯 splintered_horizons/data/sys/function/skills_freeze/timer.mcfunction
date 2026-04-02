# ===================================================
# Sys Dummy Mob Timer Function
## Guide [ function sys:skills_freeze/timer ] >>> 管理技能凍結計時器倒數
## Guide [ function sys:skills_freeze/introduction ] >>> 初始化技能凍結記分板和介紹顯示

# ===================================================
execute \
    unless score @s sys.skills_freeze matches -2147483648..2147483647 run \
return 0

execute \
    if score @s sys.skills_freeze matches ..0 run \
return run \
function sys:skills_freeze/reset

scoreboard players remove @s sys.skills_freeze 1

function sys:skills_freeze/main