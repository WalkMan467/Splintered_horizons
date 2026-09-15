# 執行位置 : 某個玩家身上
#
# drawn 標籤是拿來避免多人在場時同一條線被重複畫的。
# 要等所有玩家那一輪都跑完才能清，所以獨立成一支在後面跑。

tag @e[tag=sys.zipline_platform.drawn,distance=..60,type=armor_stand] remove sys.zipline_platform.drawn
