
# 原本用的 temp 記分板整個資料包都沒有 scoreboard objectives add 過，
# 兩行指令都會直接失敗，目標滑索台永遠拿不到 target 標籤 改用既有的記分板

scoreboard players operation #id sys.zipline_platform.id = @s sys.zipline_platform.id
execute as @e[tag=sys.zipline_platform.act,tag=!sys.zipline_platform.using,distance=0..,type=interaction] if score @s sys.zipline_platform.id = #id sys.zipline_platform.id run return run tag @s add sys.zipline_platform.target