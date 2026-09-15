# 連線是雙向的，兩座塔的清單都要寫。
# 把 a 和 b 對調再跑一次同一支，就不用寫兩份幾乎一樣的程式。

data modify storage sys:zipline_platform link.t set from storage sys:zipline_platform link.a
data modify storage sys:zipline_platform link.a set from storage sys:zipline_platform link.b
data modify storage sys:zipline_platform link.b set from storage sys:zipline_platform link.t
