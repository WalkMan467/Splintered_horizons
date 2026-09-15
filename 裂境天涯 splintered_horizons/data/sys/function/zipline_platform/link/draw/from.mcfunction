# 執行者 : 一座塔的盔甲座，執行位置在它身上（線的起點）

tag @s add sys.zipline_platform.drawn

execute store result storage sys:zipline_platform draw.a int 1 run scoreboard players get @s sys.zipline_platform.id

function sys:zipline_platform/link/draw/to with storage sys:zipline_platform draw
