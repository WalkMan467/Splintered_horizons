# # ===================================================
# # 地圖世界時鐘 重置 / world clock init

#     ## Guide [ function main:world_clock/init ] >>> 地圖世界時鐘 重置 / world clock init
#     ## Guide [ function main:world_clock/tick ] >>> 地圖世界時鐘 更新 / world clock tick
#     ## Guide [ function main:world_clock/load ] >>> 地圖世界時鐘 初始化 / world clock init

# # ===================================================

# # 手動執行：把時鐘倒回第 1 天，當天時間隨機 
# # 開新檔或重跑劇情時用 要先跑過 main:world_clock/load，碼錶才存在 

# # 碼錶歸零，基準跟著歸零，否則下一次更新會把先前累積的差值再加一次
# stopwatch restart main:world_clock
# scoreboard players set #map.lastraw global.main 0
# scoreboard players set #world_clock.enabled global.main 1

# # 0..1439 = 第 1 天的任意時刻（00:00 到 23:59）
# execute \
#     store result score #map.minutes global.main run \
# random value 0..1439

# # 立刻重算天/時/分並刷新 bossbar，不用等下一次 schedule
# function main:world_clock/tick