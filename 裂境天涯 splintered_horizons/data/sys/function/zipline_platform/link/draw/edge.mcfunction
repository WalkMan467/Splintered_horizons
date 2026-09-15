# 執行者 : 線的終點盔甲座，執行位置 : 線的起點盔甲座

scoreboard players set #itt sys.zipline_platform.link 140

tag @s add sys.zipline_platform.draw_end

execute \
    facing entity @s feet run \
function sys:zipline_platform/link/draw/line

tag @s remove sys.zipline_platform.draw_end
