# ===================================================

# guide



    ## Guide [ function sys:attachable_component/skills_freeze/guide ] >>> guide

    ## Guide [ function sys:attachable_component/skills_freeze/introduction ] >>> introduction

    ## Guide [ function sys:attachable_component/skills_freeze/reset ] >>> reset

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/scan ] >>> orphan scan

    ## Guide [ function sys:attachable_component/group/guide ] >>> Skills Freeze Attachable Components



# ===================================================



execute \
    unless score @s sys.skills_freeze matches -2147483648..2147483647 run \
return 0



execute \
    if score @s sys.skills_freeze matches ..0 run \
return run \
function sys:attachable_component/skills_freeze/reset



scoreboard players remove @s sys.skills_freeze 1



function sys:attachable_component/skills_freeze/main