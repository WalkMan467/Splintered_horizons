# # ===================================================
# # 地圖世界時鐘 更新 / world clock tick

#     ## Guide [ function main:world_clock/tick ] >>> 地圖世界時鐘 更新 / world clock tick
#     ## Guide [ function main:world_clock/load ] >>> 地圖世界時鐘 初始化 / world clock init

# # ===================================================

# # 每 5 秒跑一次 1 實際秒 = 1.2 地圖分鐘，所以每次前進 6 地圖分鐘，
# # 時鐘會以 6 分鐘為單位跳動 要更平滑就把 schedule 的間隔縮短 

# execute \
#     store result score #map.raw global.main run \
# stopwatch query main:world_clock 1.2

# # 累加差值而不是直接用讀數 碼錶重新建立（重開世界）時讀數會歸零，
# # 用差值的話只會少算離線那段，已經走過的時間不會被抹掉 

# scoreboard players operation #map.delta global.main = #map.raw global.main
# scoreboard players operation #map.delta global.main -= #map.lastraw global.main

# execute \
#     if score #map.delta global.main matches ..-1 run \
# scoreboard players set #map.delta global.main 0

# scoreboard players operation #map.minutes global.main += #map.delta global.main
# scoreboard players operation #map.lastraw global.main = #map.raw global.main

# ## ----- 拆成 天 / 時 / 分 ----- ##

# # 第幾天，從 1 開始
# scoreboard players operation #map.day global.main = #map.minutes global.main
# scoreboard players operation #map.day global.main /= #1440 global.main
# scoreboard players add #map.day global.main 1

# # 當天已過的分鐘數
# scoreboard players operation #map.dayminute global.main = #map.minutes global.main
# scoreboard players operation #map.dayminute global.main %= #1440 global.main

# # 24 小時制
# scoreboard players operation #map.hour global.main = #map.dayminute global.main
# scoreboard players operation #map.hour global.main /= #60 global.main

# scoreboard players operation #map.minute global.main = #map.dayminute global.main
# scoreboard players operation #map.minute global.main %= #60 global.main

# function main:world_clock/display

# schedule function main:world_clock/tick 5s replace
