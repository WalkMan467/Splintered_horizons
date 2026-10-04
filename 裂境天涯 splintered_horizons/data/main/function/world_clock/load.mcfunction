# # ===================================================
# # 地圖世界時鐘 初始化 / world clock init

#     ## Guide [ function main:world_clock/load ] >>> 地圖世界時鐘 初始化 / world clock init
#     ## Guide [ function main:world_clock/tick ] >>> 地圖世界時鐘 更新 / world clock tick
#     ## Guide [ function main:load ] >>> 載入 / load

# # ===================================================

# # 用 /stopwatch 而不是 gametime，因為它量的是「現實時間」——
# # 不受暫停、/tick、伺服器延遲影響 單人按 ESC 暫停時地圖時間照樣走，
# # 這正是要模擬「地圖跟現實一樣有時間流動」的關鍵 
# #
# # 流速換算
# #   Minecraft 完整一天 = 24000 tick = 1200 實際秒（20 分鐘）
# #   地圖一天 = 24 小時 = 1440 分鐘
# #   1440 / 1200 = 1.2  -> stopwatch query 的 scale 直接給 1.2，
# #                          回傳值就是「已經過的地圖分鐘數」
# #
# # 要改成一天 10 分鐘就把 tick.mcfunction 裡的 scale 改成 2.4 

# stopwatch create main:world_clock

# # 顯示用的 bossbar max 設成一個地圖日的分鐘數，進度條就等於當天的進度 
# # 重新載入時 bossbar add 會因為已存在而報錯，不影響運作 
# bossbar add main:world_clock {"text":"世界時間"}
# bossbar set main:world_clock max 1440
# bossbar set main:world_clock style notched_12
# bossbar set main:world_clock color white
# bossbar set main:world_clock visible true

# scoreboard objectives add global.main dummy

# # 常數
# scoreboard players set #1440 global.main 1440
# scoreboard players set #60 global.main 60

# # 累計的地圖分鐘數 這是時鐘的真正狀態，會跟著存檔保留 
# scoreboard players add #map.minutes global.main 0

# # 上一次讀到的碼錶值，用來算差值
# scoreboard players add #map.lastraw global.main 0

# # 基準對齊到「目前」的碼錶讀數，不能寫死成 0 
# #
# # /reload 會讓這支函式重跑，但碼錶不會跟著重置 —— stopwatch create 只是
# # 報一個已存在的錯，讀數照樣累積 這時若把基準歸零，下一次更新算出的差值
# # 就是開圖以來的全部時間，地圖時鐘會一次暴衝 
# #
# # 對齊到目前讀數的話，兩種情況都正確：
# #   首次建立       讀數約 0，基準也約 0
# #   /reload       讀數與基準相同，差值為 0，時鐘接續原本的進度
# execute \
#     store result score #map.lastraw global.main run \
# stopwatch query main:world_clock 1.2

# schedule function main:world_clock/tick 1t replace
