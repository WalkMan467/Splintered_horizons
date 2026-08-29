execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.skills_freeze.display.death.marker,type=marker] at @s run \
function sys:attachable_component/skills_freeze/ice_display/death/detect


# Marker 收不到的孤兒冰塊，兩套凍結各掃一次
# 借這個既有的每 tick 迴圈帶，不另外開排程

function sys:attachable_component/skills_freeze/ice_display/orphan/scan
function monsters:generic/freeze/orphan/scan


schedule function sys:attachable_component/skills_freeze/ice_display/death/schedule 1t