# ===================================================

# timer



    ## Guide [ function sys:skills_freeze/timer ] >>> timer

    ## Guide [ function sys:skills_freeze/introduction ] >>> introduction

    ## Guide [ function sys:skills_freeze/reset ] >>> reset

    ## Guide [ function sys:main ] >>> sys:main



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