# 執行者 : 連線模式中的玩家
# 把「起點塔 id」和「剛點到的塔 id」放進 storage，後面的巨集要用

execute store result storage sys:zipline_platform link.a int 1 run scoreboard players get @s sys.zipline_platform.link
execute store result storage sys:zipline_platform link.b int 1 run scoreboard players get #clicked sys.zipline_platform.link
