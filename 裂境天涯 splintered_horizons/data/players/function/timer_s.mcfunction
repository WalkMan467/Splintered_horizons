
# player.ultimate 改成絕對截止時間後不能再遞減。
# 舊寫法每秒 remove 1 會把截止時間往回拉，CD 會愈變愈短。
# 就緒與否一律改用 #gametime global.main 比大小。