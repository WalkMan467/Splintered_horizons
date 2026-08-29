# ===================================================
# 地圖世界時鐘 顯示 / world clock display

    ## Guide [ function main:world_clock/display ] >>> 地圖世界時鐘 顯示 / world clock display
    ## Guide [ function main:world_clock/tick ] >>> 地圖世界時鐘 更新 / world clock tick
    ## Guide [ function main:world_clock/load ] >>> 地圖世界時鐘 初始化 / world clock init

# ===================================================

# 進度條走的是「當天已過的分鐘數」，max 是 1440，所以條子會在一個地圖日
# 之內從空走到滿，午夜歸零 

bossbar set main:world_clock players @a

execute \
    store result bossbar main:world_clock value run \
scoreboard players get #map.dayminute global.main

# 日夜配色 06:00-17:59 白天，其餘藍色 
# 這兩行必須排在下面的 name 之前 —— name 那段用了 return run，會直接結束函式 

execute \
    if score #map.hour global.main matches 6..17 run \
bossbar set main:world_clock color white

execute \
    unless score #map.hour global.main matches 6..17 run \
bossbar set main:world_clock color blue

# 分鐘要補前導零，所以拆成兩條：小於 10 補一個 0，其餘照原樣 

execute \
    if score #map.minute global.main matches ..9 run \
    return run \
bossbar set main:world_clock name [{"translate":"sys.daytime","color":"gray",with:[{"score":{"name":"#map.day","objective":"global.main"},"color":"gray"}]},{"text":"   "},{"score":{"name":"#map.hour","objective":"global.main"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"#map.minute","objective":"global.main"},"color":"aqua"}]

bossbar set main:world_clock name [{"translate":"sys.daytime","color":"gray",with:[{"score":{"name":"#map.day","objective":"global.main"},"color":"gray"}]},{"text":"   "},{"score":{"name":"#map.hour","objective":"global.main"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#map.minute","objective":"global.main"},"color":"aqua"}]
