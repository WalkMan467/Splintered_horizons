# 執行者 : 要拆掉的滑索台 interaction，執行位置在它身上

tellraw @a [{"translate":"tips.zipline_platform.prefix","color":"gold"},{"translate":"tips.zipline_platform.remove.success","color":"white"},{"text":" #","color":"white"},{score:{name:"@s",objective:"sys.zipline_platform.id"},"color":"yellow"}]

particle flash{color:[0.600,0.239,0.000,0.50]} ~ ~ ~ 0 0 0 0 1 normal
particle block{block_state:"minecraft:cut_copper"} ~ ~2 ~ 0.75 2 0.75 0 100 force @a
playsound minecraft:block.copper.break voice @a ~ ~1 ~ 1 1

function sys:zipline_platform/remove/use
